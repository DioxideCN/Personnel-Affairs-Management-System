var sendAjax;
(function(){
    sendAjax = {
        sendGetAjax:sendGetAjax,
        sendPostAjax:sendPostAjax
    }
})()
//公共get请求
function sendGetAjax(url, data, successfn) {
    $.ajax({
        url: url,
        type: "GET",
        contentType: "application/json;charset=UTF-8",
        dataType: "json",
        async:false,
        data: data,
        success: function (res) {
            successfn(res);
        },
    })
}
//公共post请求
function sendPostAjax(url, data, successfn) {
    $.ajax({
        url: url,
        type: "POST",
        contentType: "application/json;charset=UTF-8",
        dataType: "json",
        async:false,
        data: JSON.stringify(data),
        success: function (res) {
            successfn(res);
        },
    })
}