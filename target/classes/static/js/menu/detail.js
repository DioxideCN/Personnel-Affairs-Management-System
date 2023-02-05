$(function () {
    var iconValue;
    layui.use(['table', 'laydate', 'util', 'form'], function () {
        var form = layui.form;
        form.verify({
            num: [
                /^[1-9]\d*$/
                , '密码必须6到12位，且不能出现空格'
            ]
        });
        //获取后台传过来的iconvalue
        showDefalut(iconValue);
        //select选中切换input背景icon事件
        form.on('select(selectIcon2)', function (data) {
            iconValue = data.value;
            changeBackGroud(iconValue);
        });
    })
})

//跳转update页面初始化select
function showDefalut(iconValue) {
    iconValue = $("#hidden-icon").val();
    getIconsUrl(iconValue);//渲染select页面
    updateForm();
    changeBackGroud(iconValue);//主动触发背景切换
}

//获取全部icon url 事件
function getIconsUrl(iconValue) {
    var templateSelect = $("select[name='selectIcon2']");
    var l=templateSelect.length;
    for (let i = 0; i <templateSelect.length ; i++) {
        if(templateSelect[i].value == iconValue)
            templateSelect[i].selected = true;
    }
}

//根据select value切换input icon事件
function changeBackGroud(iconValue) {
    var input = $(".layui-select-title").find('input');
    input.css({
        background: ""
    });
    switch (iconValue) {
        case '0':
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
    input.attr("placeholder", " ");
}

//更新form

function updateForm() {
    layui.use(['form'], function () {
        var form = layui.form;
        form.render('select');
    });
}
