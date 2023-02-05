//登陆事件
layui.use(['form'], function () {
    var form = layui.form;
    form.on('submit(sblogin)', function (data) {
        var action = data.form.action;
        var method = data.form.method;
        var field = data.field;
        console.log(action);
        console.log(method);
        console.log(field);
        $.ajax({
            type: method,
            url: action,
            dataType: 'json',
            contentType: 'application/json; charset=UTF-8',
            data: field,
            success: function (res) {

            }
        })
    })
})
var sendAjax;
var maxNum;
$(function () {
    sendAjax = {
        sendGetAjax: sendGetAjax,
        sendPostAjax: sendPostAjax
    }
    //获取次数
    getNowDayNum();
//初始化界面
    numRunFun(0, maxNum)

})
var numBox = document.getElementById('num');

//获取今日访问次数
function getNowDayNum() {
    url = "/statisNowDayPnum.json";
    sendAjax.sendGetAjax(url, null, function (res) {
        if (res.status) {
            maxNum = res.data;
        }
    })
}

/**
 * 数字滚动
 * @param {Object} num         开始值
 * @param {Object} maxNum    最大值,最终展示的值
 */
function numRunFun(num, maxNum) {
    var numText = num;
    var golb; // 为了清除requestAnimationFrame
    function numSlideFun() {
        numText += 0.3; // 速度的计算可以为小数
        if (numText >= maxNum) {
            numText = maxNum;
            cancelAnimationFrame(golb);
        } else {
            golb = requestAnimationFrame(numSlideFun);
        }
        numBox.innerHTML = ~~(numText)

    }

    numSlideFun();
}

