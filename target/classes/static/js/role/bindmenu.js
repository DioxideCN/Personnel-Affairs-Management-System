$(function () {
    var rIdVal = $("#rIdVal").val();
    //ztree配置
    var setting = {
        check: {
            enable: true,
            chkStyle: "checkbox",
            chkboxType: {"Y": "p", "N": "s"}
        },
        data: {
            simpleData: {
                enable: true
            }
        }
    };
    var zNodes = [];
    getTree(rIdVal);

    //获取菜单树
    function getTree(rIdVal) {
        var url = "/RoleController/queryBindMenuByRid.json?" + $.param({rId: rIdVal});
        sendAjax.sendGetAjax(url, null, function (res) {
            if (res.status) {
                zNodes = res.data;
            }
        })
    }

    //初始化菜单树
    $(document).ready(function () {
        funcTreeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
    });


})

//保存点击事件
function save_clink() {
    var rIdVal = $("#rIdVal").val();
    var checkedObjs = funcTreeObj.getCheckedNodes(true);  //获取所有选中的节点
    console.log(checkedObjs);
    var arr = new Array();
    for (let i = 0; i < checkedObjs.length; i++) {
        var obj = checkedObjs[i]['id'];
        arr.push(obj);
    }
    arr.push(rIdVal);
    console.log(arr);
    var url = "/RoleController/bindMenuPage.json";
    // var field = $.param({rId: rIdVal});
    sendAjax.sendPostAjax(url, arr, function (result) {
        layui.use('layer', function () {
            var mask = layer.load();
            if (result.status) {
                layer.msg(result.msg, {icon: 1, time: 1000}, function () {
                    closeIframe();
                });
            } else {
                layer.msg(result.msg, {icon: 2, time: 1500});
            }
            layer.close(mask);
        });
    });
}

function closeIframe() {
    layui.use('layer', function () {
        var layer = layui.layer;
        // 关闭i-frame弹出层
        var layIndex = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
        parent.layer.close(layIndex); //再执行关闭
        // 刷新父页面（主要用于页面列表）
        parent.location.reload(); // true：强制浏览器从服务器加载页面资源，false：反之；
    });
}

// function sendData(action, field) {
//     layui.use('layer', function () {
//         var mask = layer.load();
//         console.log(field)
//         $.post(action, field, function (result) {
//             if (result.status) {
//                 layer.msg(result.msg, {icon: 1, time: 1000}, function () {
//                     closeIframe();
//                 });
//             } else {
//                 layer.msg(result.msg, {icon: 2, time: 1500});
//             }
//             layer.close(mask);
//         });
//     })
// }
