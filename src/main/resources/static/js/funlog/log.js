$(function () {
    layui.use('table', function () {
        var table = layui.table;

        var init_table = table.render({
            elem: '#test'
            , toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            , method: 'post'
            , url: '/LogController/funLogQuery.json'
            , cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            , cols: [[
                {type: 'checkbox'},
                { type: 'numbers', title: '序号', width: 40  }
                , {field: 'createTime', title: '创建时间'} //width 支持：数字、百分比和不填写。你还可以通过 minWidth 参数局部定义当前单元格的最小宽度，layui 2.2.1 新增
                , {field: 'userName', title: '用户', sort: true}
                , {field: 'action', title: '事件', sort: true}
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
                table.reload(' ', {
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

    });

    //遍历一遍表单的key value
    function processSearchForm() {
        var paramData = {};
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

    // 工具
    // layTable.on('toolbar(test)', function (obj) {
    //     var checkStatus = layTable.checkStatus(obj.config.id);
    //     var data = checkStatus.data;
    //     switch (obj.event) {
    //         case 'add.html':
    //             info_add();
    //             break;
    //         case 'modify.html':
    //             info_modify(data);
    //             break;
    //         case 'sub.json':
    //             info_sub(data);
    //             break;
    //         case 'view.html':
    //             info_view(data);
    //             break;
    //         case 'cancel.json':
    //             info_cancel(data);
    //             break;
    //         case 'delete.json':
    //             info_delete(data);
    //             break;
    //     }
    // });
})

var contextPath="127.0.0.1";
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
        content: [contextPath + '/LogController/add.html', 'no']
    });
}


//修改
function info_modify(data) {
    if (data.length != 1) {
        layui.layer.msg('请选择一条记录', {icon: 2, time: 1500});
        return;
    }
    console.log(data);
    var layIndex = layer.open({
        type: 2,
        title: ['修改', 'font-weight: bold;'],
        shadeClose: false,
        shade: 0.3,
        anim: 1,
        maxmin: true,
        area: ['500px', '400px'],
        content: [contextPath + '/houseController/modify.html?' + $.param({treCode: data[0]['trea_code']}) + '&' + $.param({inputDate: data[0]['input_date']})]
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
        content: [contextPath + '/houseController/detail.html?' + $.param({treCode: data[0]['trea_code']}) + '&' + $.param({inputDate: data[0]['input_date']})]
    });
}


//删除
function info_delete(data) {
    var houseArr = new Array();//要传输的对象数组
    if (data.length === 0) {
        layui.layer.msg('请至少选择一条记录', {icon: 2, time: 1500});
        return;
    }
    for (var key in data) {
        var obj = {treCode: data[key]['trea_code'], inputDate: data[key]['input_date']};
        houseArr.push(obj);
    }
    console.log(data);

    layer.confirm('确定删除吗?', {icon: 3, title: '提示'},
        function (index) {
            var mask = layer.load();
           // sendPostRequestJson(contextPath + '/houseController/delete.json', JSON.stringify(houseArr), function (result) {
                if (result.status) {
                    layui.layer.msg(result.msg, {icon: 1, time: 1000}, function () {
                        location.reload();
                    });
                } else {
                    layui.layer.msg(result.msg, {icon: 2, time: 1500});
                }
                layer.close(mask);
            });
            layer.close(index);

}





