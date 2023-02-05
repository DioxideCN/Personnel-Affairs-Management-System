<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../../static/frame/layui-v2.5.6/layui/css/layui.css">
    <link rel="stylesheet" href="../../static/css/log/log.css">
    <link rel="stylesheet" href="../../static/css/user/user.css">
    <script src="../../static/frame/jquery-v3.5.1/jquery-3.5.1.js" charset="utf-8"></script>
    <script src="../../static/js/user/user.js" charset="utf-8"></script>
    <script src="../../static/frame/layui-v2.5.6/layui/layui.js" charset="utf-8"></script>
    <script src="../../static/js/common/info.js" charset="utf-8"></script>
    <script src="../../static/js/user/add.js" charset="utf-8"></script>
</head>
<body>
<div id="app">
    <form class="layui-form add-form" method="post" action="${request.contextPath}/userController/save.form">

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名<span style="color:red;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="text" maxlength="12" name="uName" lay-verify="required" placeholder="请输入用户名"
                               class="layui-input layui-input-sm ">
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">密码 <span style="color:#ff4053;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="password" id="pw_" name="password" lay-verify="required||password"
                               placeholder="请输入密码"
                               class="layui-input layui-input-sm ">
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">请确认密码 <span style="color:#ff4053;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="password" name="checkpassword" lay-verify="required||recheck" placeholder="请输入密码"
                               class="layui-input layui-input-sm ">
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">角色<span style="color:red;">*</span>：</label>
                    <div class="layui-input-inline">
                        <select name="rId" lay-verify="required" lay-search="">
                            <option value="">直接选择或搜索选择</option>
                        <#list roledao as role>
                            <option value=${role.rId}>${role.rName}</option>
                        </#list>
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">性别：</label>
                    <div class="layui-input-inline">
                        <select name="sex" lay-search="">
                            <option value="">直接选择或搜索选择</option>
                            <option value="1">男</option>
                            <option value="0">女</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">手机号：</label>
                    <div class="layui-input-block">
                        <input type="text" name="phone" lay-verify="phone" placeholder="请输入手机号"
                               class="layui-input layui-input-sm ">
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">邮箱：</label>
                    <div class="layui-input-block">
                        <input type="text" name="email"  lay-verify="email" placeholder="请输入邮箱"
                               class="layui-input layui-input-sm ">
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item" style="text-align: right;">
                    <div class="layui-input-block">
                        <button type="submit" class="layui-btn btn-primary layui-btn-sm" lay-submit
                                lay-filter="save_form">保存
                        </button>
                        <button type="reset" class="layui-btn layui-btn-primary layui-btn-sm">重置</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>