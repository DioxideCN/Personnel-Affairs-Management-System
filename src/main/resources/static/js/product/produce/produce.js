$(function () {
    layui.use(['table','laydate', 'util','form'], function () {
        var table = layui.table;
        var init_table = table.render({
            elem: '#test'
            , toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            , method: 'post'
            , url: '/productController/listProduce.json'
            , cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            , cols: [[
                {type: 'checkbox'},
                { type: 'numbers', title: '序号', width: 40  }
                , {field:'pnId',hide:true}
                , {field:'pid',title: '商品编号'}
                , {field:'pname',title: '商品名称'}
                , {field: 'janPrdNum', title: '1月'} //width 支持：数字、百分比和不填写。你还可以通过 minWidth 参数局部定义当前单元格的最小宽度，layui 2.2.1 新增
                , {field: 'febPrdNum', title: '2月'}
                , {field: 'marPrdNum', title: '3月'}
                , {field: 'mayPrdNum', title: '4月'}
                , {field: 'mayPrdNum', title: '5月'}
                , {field: 'junPrdNum', title: '6月'}
                , {field: 'julPrdNum', title: '7月'}
                , {field: 'augPrdNum', title: '8月'}
                , {field: 'sepPrdNum', title: '9月'}
                , {field: 'octPrdNum', title: '10月'}
                , {field: 'novPrdNum', title: '11月'}
                , {field: 'decPrdNum', title: '12月'}
            ]]
            ,text: {
                none: '暂无相关数据' //默认：无数据。注：该属性为 layui 2.2.5 开始新增
            }
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
        area: ['700px', '600px'],
        content: [contextPath + '/userController/add.html', 'no'],
    });
}


//修改
function info_modify(data) {
    if (data.length != 1) {
        layui.layer.msg('请选择一条记录', {icon: 2, time: 1500});
        return;
    }
    console.log(data[0]['uId']);
    console.log(data[0]['uName']);
    var layIndex = layer.open({
        type: 2,
        title: ['修改', 'font-weight: bold;'],
        shadeClose: false,
        shade: 0.3,
        anim: 1,
        maxmin: true,
        area: ['500px', '400px'],
        content: [contextPath + '/userController/modify.html?' + $.param({id: data[0]['uId']})]
    });
}

//详情
function info_view(data) {
    if (data.length != 1) {
        layui.layer.msg('请选择一条记录', {icon: 2, time: 1500});
        return;
    }
    console.log(data);
    var layIndex = layer.open({
        type: 2,
        title: ['详情', 'font-weight: bold;'],
        shadeClose: false,
        shade: 0.3,
        anim: 1,
        maxmin: true,
        area: ['500px', '400px'],
        content: [contextPath + '/userController/detail.html?' + $.param({uId: data[0]['uId']}) ]
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
        var obj = data[key]['uId'];
        userArr.push(obj);
    }
    console.log(userArr);

    layer.confirm('确定删除吗?', {icon: 3, title: '提示'},
        function (index) {
            var mask = layer.load();
            $.ajax({
                url:"/userController/deleteById.json",
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




