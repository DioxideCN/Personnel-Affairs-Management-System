//自定义验证表单
layui.use(['table', 'laydate', 'util', 'form'], function () {
    var form = layui.form;
    form.verify({
        num: [
            /^[1-9]\d*$/
            , '密码必须6到12位，且不能出现空格'
        ]
    });
    //select选中事件
    form.on('select(selectIcon)', function (data) {
        var input = $(".layui-select-title").find('input');
        switch (data.value) {
            case '0':
                var input = $(".layui-select-title").find('input');
                input.css({
                    background: "url('../static/img/home.png') no-repeat  center"
                });
                break;
            case '1':
                input.css({
                    background: "url('../static/img/anthority.png') no-repeat  center"
                });
                break;
            case '2':
                input.css({
                    background: "url('../static/img/basics.png') no-repeat  center"
                });
                break;
            case '3':
                input.css({
                    background: "url('../static/img/log.png') no-repeat  center"
                });
                break;
            case '4':
                input.css({
                    background: "url('../static/img/menu.png') no-repeat  center"
                });
                break;
            case '5':
                input.css({
                    background: "url('../static/img/role.png') no-repeat  center"
                });
                break;
            case '6':
                input.css({
                    background: "url('../static/img/user.png') no-repeat  center"
                });
                break;
        }
        input.attr("placeholder"," ");
    });
})
//更新3