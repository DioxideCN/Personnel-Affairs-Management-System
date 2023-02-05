$(function () {
    layui.use(['table', 'laydate', 'util', 'form'], function () {
        var form = layui.form
        var setting = {
            view: {
                addHoverDom: addHoverDom,
                removeHoverDom: removeHoverDom,
                selectedMulti: false
            },
            //开启工具栏
            edit: {
                enable: true,
                editNameSelectAll: true,
                showRemoveBtn: showRemoveBtn,
                showRenameBtn: showRenameBtn
            },
            data: {
                simpleData: {
                    enable: true
                }
            },
            callback: {
                beforeDrag: beforeDrag,
                beforeEditName: beforeEditName,
                beforeRemove: beforeRemove,
                beforeClick: beforeClick,//节点点击事件
                // beforeRename: beforeRename,
                // onRename: onRename
            }
        };
        var zNodes = [];
        getTree();
        var log, className = "dark";


        //节点点击事件
        function beforeClick(treeId, treeNode) {
            //根节点不触发、一级菜单不触发
            if (treeNode.id == '0' || treeNode.pId == '0') {
                return false;
            }
            $(".showTreeiframe").attr('src', "/menuController/showSignleNode.html?" + $.param({mId: treeNode.id}));
        }

        //拖拽之前
        function beforeDrag(treeId, treeNodes) {
            //禁止所有拖拽操作
            return false
        }

        //拖拽之后
        // function beforeDrop(treeId, treeNodes, targetNode, moveType) {
        //     console.log(treeId)
        // }

        //菜单编辑
        function beforeEditName(treeId, treeNode) {
            className = (className === "dark" ? "" : "dark");
            // showLog("[ "+getTime()+" beforeEditName ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name);
            var zTree = $.fn.zTree.getZTreeObj("treeDemo");
            zTree.selectNode(treeNode);
            var url = "/menuController/updatemnupage.html"
            $(".showTreeiframe").attr('src', url + "?" + $.param({mId: treeNode.id}));
            return false;
        }

        /*删除事件*/
        function beforeRemove(treeId, treeNode) {
            if (treeNode.id == "0") {
                return
            }
            className = (className === "dark" ? "" : "dark");
            var zTree = $.fn.zTree.getZTreeObj("treeDemo");
            zTree.selectNode(treeNode);
            var url = "/menuController/removeUrl.json"
            layer.confirm('确定删除该菜单吗?', {icon: 3, title: '提示'},
                function (index) {
                    console.log(treeNode.id);
                    var mask = layer.load();
                    sendAjax.sendGetAjax(url, $.param({mId: treeNode.id}), function (res) {
                        if (res.status) {
                            layui.layer.msg(res.msg, {icon: 1, time: 1000}, function () {
                            })
                        } else {
                            layui.layer.msg(res.msg, {icon: 2, time: 1500})
                        }
                        layer.close(mask);
                    })
                },
                function () {
                    location.reload();
                });
        }


        function getTime() {
            var now = new Date(),
                h = now.getHours(),
                m = now.getMinutes(),
                s = now.getSeconds(),
                ms = now.getMilliseconds();
            return (h + ":" + m + ":" + s + " " + ms);
        }


        function addHoverDom(treeId, treeNode) {
            var sObj = $("#" + treeNode.tId + "_span");
            if (treeNode.editNameFlag || $("#addBtn_" + treeNode.tId).length > 0) return;
            var addStr = "<span class='button add' id='addBtn_" + treeNode.tId
                + "' title='add node' onfocus='this.blur();'></span>";
            sObj.after(addStr);
            var btn = $("#addBtn_" + treeNode.tId);
            //添加点击事件
            if (btn) btn.bind("click", function () {
                addTreeNode(treeId, treeNode);
            });
        };

        //移除工具栏按钮
        function removeHoverDom(treeId, treeNode) {
            $("#addBtn_" + treeNode.tId).unbind().remove();
        };

        //如果为根节点 不展示按钮
        function showRemoveBtn(treeId, treeNode) {
            return treeNode.id == "0" ? false : true;
        }

        function showRenameBtn(treeId, treeNode) {
            return treeNode.id == "0" ? false : true;
        }

        function selectAll() {
            var zTree = $.fn.zTree.getZTreeObj("treeDemo");
            zTree.setting.edit.editNameSelectAll = $("#selectAll").attr("checked");
        }

        //获取菜单树
        function getTree() {
            var url = "/menuController/queryTreeAll.json";
            sendAjax.sendGetAjax(url, null, function (res) {
                if (res.status) {
                    zNodes = res.data;
                }
            })
        }


        $(document).ready(function () {
            $.fn.zTree.init($("#treeDemo"), setting, zNodes);
            $("#selectAll").bind("click", selectAll);
        });

    })
})

//菜单树添加按钮点击事件
function addTreeNode(treeId, treeNode) {
    //如果父节点不是根节点，且没有子节点的节点就是二级菜单 不让他继续添加节点。机智如我！
    if (treeNode.pId != '0' && treeNode.check_Child_State == -1) {
        layui.layer.msg("二级菜单不能添加节点！", {icon: 2, time: 1500}, function () {
            return false;
            })
    }
    console.log(treeNode)
    $(".showTreeiframe").attr('src', "/menuController/addpage.html?" + $.param({treeId: treeNode.id}));
}

