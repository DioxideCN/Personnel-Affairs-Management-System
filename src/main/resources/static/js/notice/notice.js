var init_table;
$(function () {
    layui.use(['table', 'laydate', 'util', 'form'], function () {
        var table = layui.table;
        init_table = table.render({
            elem: '#test'
            , toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            , method: 'post'
            , url: '/NoticeController/emailList.json'
            , cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            , cols: [[
                {type: 'checkbox'},
                {type: 'numbers', title: '序号', width: 40}
                , {field: 'etopic', title: '主题'}
                , {field: 'eid', hide: true}
                , {field: 'uname', title: '发件人'} //width 支持：数字、百分比和不填写。你还可以通过 minWidth 参数局部定义当前单元格的最小宽度，layui 2.2.1 新增
                , {field: 'createTime', title: '创建时间', sort: true}
                , {field: 'isReaded', title: '是否已读', sort: true}
            ]]
            , text: {
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
                case 'sendEmail.html':
                    info_add();
                    break;
                case 'allreaded.json':
                    allreaded(data);
                    break;
                case 'suchDelete.json':
                    suchDelete(data);
                    break;
                case 'detail.html':
                    info_view(data);
                    reload();
                    break;

            }
        });

        //自定义校验
        var form = layui.form;
        form.verify({
            password: [
                /^[\S]{6,12}$/
                , '密码必须为6到12个字符，且不能出现空格'
            ],
            recheck: function (v) {
                var pw = $("#pw_").val();
                if (v !== pw) {
                    return '两次密码不一致';
                }
            }
        })

    });

    function reload() {
        document.getElementById("search_form").reset();
        init_table.reload({
            where: processSearchForm(), page: {
                curr: 1 //重新从第 1 页开始
            }
        });
    }

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
            , format: 'yyyyMMdd'
        });
    })


})

var contextPath = "";

//发送信件
function info_add() {
    var layIndex = layer.open({
        type: 2,
        title: ['发送邮件', 'font-weight: bold;'],
        shadeClose: false,
        shade: 0.3,
        anim: 1,
        maxmin: true,
        area: ['700px', '600px'],
        content: [contextPath + '/NoticeController/showSendEmail.html', 'no'],
    });
}


//查看信件，点击查看应该先刷新表单再展示信件
function info_view(data) {
    if (data.length != 1) {
        layui.layer.msg('请选择一条记录', {icon: 2, time: 1500});
        return;
    }
    var num=$("#noticeNum", parent.document).parent().find('#noticeNum').text();
    if(num!=0){
        $("#noticeNum", parent.document).parent().find('#noticeNum').html(num-1);
    }
    var layIndex = layer.open({
        type: 2,
        title: ['详情', 'font-weight: bold;'],
        shadeClose: false,
        shade: 0.3,
        anim: 1,
        maxmin: true,
        area: ['500px', '400px'],
        content: [contextPath + '/NoticeController/emailDetailPage.html?' + $.param({eId: data[0]['eid']})]
    });
}

//删除
function suchDelete(data) {
    var userArr = new Array();//要传输的对象数组
    if (data.length === 0) {
        layui.layer.msg('请至少选择一条记录', {icon: 2, time: 1500});
        return;
    }
    for (var key in data) {
        if(data[key]['isReaded']=="未读"){
            layui.layer.msg('未读的信件不能删除', {icon: 2, time: 1500});
            return;
        }
        var obj = data[key]['eid'];
        userArr.push(obj);
    }
    console.log(userArr);

    layer.confirm('确定删除吗?', {icon: 3, title: '提示'},
        function (index) {
            var mask = layer.load();
            $.ajax({
                url:"/NoticeController/suchDelete.json",
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
//全部已读
function allreaded(data) {

    var url = "/NoticeController/allEmailReaded.json";
    layer.confirm('确定全部已读吗?', {icon: 3, title: '提示'},
        function (index) {
            sendAjax.sendGetAjax(url, null, function (res) {
                if (res.status) {
                    layui.layer.msg(res.msg, {icon: 1, time: 1500});
                    changeNum();
                    location.reload();
                } else {
                    layui.layer.msg(res.msg, {icon: 2, time: 1500});
                }
            })
            layer.close(index);
        })
}

//更新数量
function changeNum() {
    var url = "/NoticeController/getNoticeNum.json";
    sendAjax.sendGetAjax(url, null, function (res) {
        if (res.status) {
            console.log(res.data);
            $("#noticeNum", parent.document).parent().find('#noticeNum').html(res.data);
        }
    })
}




