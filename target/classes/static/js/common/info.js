var tableSelect;
var treasurySelect;

$(function () {
    layui.use(['laydate', 'form'], function () {



        var form = layui.form;
        form.on('submit(save_form)', function (data) {
            var action = data.form.action;
            var field = data.field;

          //  field.status = "0";
            sendData(action, field);
            return false; // 禁止页面提交表单
        });

        form.on('submit(submit_form)', function (data) {
            var action = data.form.action;
            var field = data.field;
            field.status = "1";
            sendData(action, field);
            return false; // 禁止页面提交表单
        });

        form.render();
    });

    function sendData(action, field) {
        var mask = layer.load();
        $.post(action, field, function (result) {
            if (result.status) {
                layer.msg(result.msg, {icon: 1, time: 1000}, function () {
                    closeIframe();
                });
            } else {
                layer.msg(result.msg, {icon: 2, time: 1500});
            }
            layer.close(mask);
        });
    }




});

function closeIframe() {
    // 关闭i-frame弹出层
    var layIndex = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
    parent.layer.close(layIndex); //再执行关闭
    // 刷新父页面（主要用于页面列表）
    parent.location.reload(); // true：强制浏览器从服务器加载页面资源，false：反之；
}
