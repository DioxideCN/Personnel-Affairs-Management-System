$(function () {
    layui.use(['table','laydate', 'util','form','laydate'], function () {
        var table = layui.table;
        var init_table = table.render({
            elem: '#test'
            , toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            , method: 'post'
            , url: '/RoleController/showsreach.json'
            , cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            , cols: [[
                {type: 'checkbox'},
                { type: 'numbers', title: '序号', width: 40  }
                , {field:'rId',hide:true}
                , {field: 'rName', title: '角色名称'} //width 支持：数字、百分比和不填写。你还可以通过 minWidth 参数局部定义当前单元格的最小宽度，layui 2.2.1 新增
                , {field: 'rDesc', title: '角色描述'}
                , {field: 'createTime', title: '创建时间', sort: true}
                , {field: 'updateTime', title: '修改时间', sort: true}
            ]]
            , id: 'testReload'
            , page: true
            , limit: 10
            , parseData: function (result) {
                return {
                    code: result.code,
                    msg: result.msg,
                    count: result.count,
                    data: result.data
                };
            },
            done: function (result, curr, count) {
                //   layer.msg(result.msg, {icon: 1, time: 1000});
            }
        });
        var $ = layui.$, active = {
            reload: function () {
                var demoReload = $('#demoReload');
                //执行重载
                init_table.reload(' ', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    , where: {
                        key: {
                            id: demoReload.val()
                        }
                    }
                }, 'data');
            }
        };
        //搜索按钮事件
        $("#search_btn").on('click', function () {
            init_table.reload({
                where: processSearchForm(),//where是指你要往后台发的参数的键值对
                page: {
                    curr: 1 //重新从第 1 页开始
                }
            });
        })
        // 重置
        $('#reset_btn').on('click', function () {
            document.getElementById("search_form").reset();
            init_table.reload({
                where: processSearchForm(), page: {
                    curr: 1 //重新从第 1 页开始
                }
            });
        });
        //时间空间
        var laydate = layui.laydate;

        //常规用法
        laydate.render({
            elem: '#createTime'
        });
        // 工具
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id);
            var data = checkStatus.data;
            switch (obj.event) {
                case 'add.html':
                    info_add();
                    break;
                case 'update.html':
                    info_modify(data);
                    break;
                case 'sub.json':
                    info_sub(data);
                    break;
                case 'detail.html':
                    info_view(data);
                    break;
                case 'cancel.json':
                    info_cancel(data);
                    break;
                case 'delete.json':
                    info_delete(data);
                    break;
                case 'bindmenu.html':
                    info_bindmenu(data);
                    break;
            }
        });

        //自定义校验
        var form=layui.form;
        form.verify({
            password:[
                /^[\S]{6,12}$/
                ,'密码必须为6到12个字符，且不能出现空格'
            ],
            recheck:function(v){
                var pw=$("#pw_").val();
                if(v!==pw){
                    return '两次密码不一致';
                }
            }
        })

    });

    //遍历一遍表单的key value
    function processSearchForm() {
        var paramData = {};
        console.log(this);
        $($('#search_form').serializeArray()).each(function () {
            paramData[this.name] = this.value;
        });
        return paramData;
    }

    layui.use('laydate', function () {
        var laydate = layui.laydate;

        laydate.render({
            elem: '#test13'
            ,format: 'yyyyMMdd'
        });
    })


})

var contextPath="";
//新增
function info_add() {
    var layIndex = layer.open({
        type: 2,
        title: ['新增', 'font-weight: bold;'],
        shadeClose: false,
        shade: 0.3,
        anim: 1,
        maxmin: true,
        area: ['500px', '400px'],
        content: [contextPath + '/RoleController/add.html', 'no'],
    });
}


//修改
function info_modify(data) {
    if (data.length != 1) {
        layui.layer.msg('请选择一条记录', {icon: 2, time: 1500});
        return;
    }

    var layIndex = layer.open({
        type: 2,
        title: ['修改', 'font-weight: bold;'],
        shadeClose: false,
        shade: 0.3,
        anim: 1,
        maxmin: true,
        area: ['500px', '400px'],
        content: [contextPath + '/RoleController/modify.html?' + $.param({rId: data[0]['rId']})]
    });
}

//详情
function info_view(data) {
    if (data.length != 1) {
        layui.layer.msg('请选择一条记录', {icon: 2, time: 1500});
        return;
    }
    var layIndex = layer.open({
        type: 2,
        title: ['详情', 'font-weight: bold;'],
        shadeClose: false,
        shade: 0.3,
        anim: 1,
        maxmin: true,
        area: ['500px', '400px'],
        content: [contextPath + '/RoleController/detail.html?' + $.param({rId: data[0]['rId']}) ]
    });
}


//删除
function info_delete(data) {
    var userArr = new Array();//要传输的对象数组
    if (data.length === 0) {
        layui.layer.msg('请至少选择一条记录', {icon: 2, time: 1500});
        return;
    }
    for (var key in data) {
        var obj = data[key]['rId'];
        userArr.push(obj);
    }
    console.log(userArr);

    layer.confirm('确定删除吗?', {icon: 3, title: '提示'},
        function (index) {
            var mask = layer.load();
            $.ajax({
                url:"/RoleController/deleteById.json",
                type:"POST",
                contentType: "application/json;charset=UTF-8",
                dataType:"json",
                data: JSON.stringify(userArr),
                success:function(res){
                    if(res.status){
                        layui.layer.msg(res.msg,{icon:1,time:1000},function(){
                            location.reload();
                        })
                    }else{
                        layui.layer.msg(res.msg,{icon:2,time:1500})
                    }
                    layer.close(mask);
                }
            })
            layer.close(index);
        });

}

//展示菜单绑定界面
function info_bindmenu(data) {
    if (data.length != 1) {
        layui.layer.msg('请选择一条记录', {icon: 2, time: 1500});
        return;
    }
    var layIndex = layer.open({
        type: 2,
        title: ['绑定菜单', 'font-weight: bold;'],
        shadeClose: false,
        shade: 0.3,
        anim: 1,
        maxmin: true,
        area: ['360px', '400px'],
        content: [contextPath + '/RoleController/showBindMenuPage.html?'+$.param({rId: data[0]['rId']}), 'no'],
    });
}




