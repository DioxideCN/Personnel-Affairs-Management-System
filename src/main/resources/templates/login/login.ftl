<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>layout 后台大布局 - Layui</title>
    <link rel="stylesheet" href="../../static/frame/layui-v2.5.6/layui/css/layui.css">
    <link rel="stylesheet" href="../../static/css/login/login.css">
    <script src="../../static/frame/jquery-v3.5.1/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="../../static/js/common/util.js"></script>
</head>
<body class="layui-layout-body">
<#--<form class="layui-form" action="${request.contextPath}/login.form" method="post">-->
<form class="layui-form" action="${request.contextPath}/login.form" method="post">
    <div class="container">
        <button class="close" title="关闭">X</button>
        <div class="layui-form-mid layui-word-aux">
            <img id="logoid" src="../../static/img/06.png" height="35">
        </div>
                <#if msg??>
        <div id="logerr" style="color: red;text-align: center"  class="layui-form-item">
            ${msg}
        </div>
                </#if>
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input type="text" name="uName" required lay-verify="required" placeholder="请输入用户名" autocomplete="off"
                       class="layui-input">
            </div>
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label">密 &nbsp;&nbsp;码</label>
            <div class="layui-input-inline">
                <input type="password" name="password" required lay-verify="required" placeholder="请输入密码"
                       autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit type="submit" lay-filter="sblogin">登陆</button>
            </div>
        </div>
<#--        <div class="layui-form-item" id="showPnum">-->
<#--            今日访问次数为：<span id="num"></span>-->
<#--        </div>-->
    </div>
</form>
<script src="../../static/frame/layui-v2.5.6/layui/layui.js"></script>
<script src="../../static/js/login/login.js"></script>
<#--session过期父页面重定向-->
<script language="JavaScript">
    if (window != top)
        top.location.href = location.href;
</script>
</body>
</html>