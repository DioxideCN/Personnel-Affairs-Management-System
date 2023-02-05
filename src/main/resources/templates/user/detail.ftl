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
</head>
<body>
<div id="app">
    <form class="layui-form add-form">

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名<span style="color:red;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="text" hidden id="uId" name="uId" value="${user.uId}">
                        <input type="text" maxlength="12" name="uName" lay-verify="required"
                             disabled
                               class="layui-input layui-input-sm layui-disabled" value=${user.uName}>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">密码 <span style="color:#ff4053;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="password" id="pw_" name="password" disabled
                                       placeholder="请输入密码"
                               class="layui-input layui-input-sm layui-disabled"
                               value=${user.password}>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">请确认密码 <span style="color:#ff4053;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="password" name="checkpassword"
                                       placeholder="请输入密码"
                                       class="layui-input layui-input-sm layui-disabled" disabled
                               value=${user.password}>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">角色<span style="color:red;">*</span>：</label>
                    <div class="layui-input-inline">
                        <select name="rId" lay-verify="required" lay-search="" disabled>
                            <option value="">直接选择或搜索选择</option>
                        <#list roledao as role>
                        <#if role.rId=now_role.rId>
                            <option selected value=${role.rId} >${role.rName}</option>
                        <#else >
                            <option value=${role.rId}>${role.rName}</option>
                        </#if>
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
                        <select name="sex" lay-search="" disabled>
                            <option value="">直接选择或搜索选择</option>
                        <#if user.sex == "0">
                        <option value="1" >男</option>
                        <option value="0" selected>女</option>
                        <#elseif  user.sex == "1">
                        <option value="1" selected>男</option>
                        <option value="0" >女</option>
                        <#else>
                        <option value="1" >男</option>
                        <option value="0">女</option>
                        </#if>
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
                        <input type="text" name="phone" lay-verify="phone" disabled placeholder="请输入手机号"
                                class="layui-input layui-input-sm layui-disabled" value=${user.phone} >
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">邮箱：</label>
                    <div class="layui-input-block">
                        <input type="text" name="email" lay-verify="email" disabled placeholder="请输入邮箱"
                                class="layui-input layui-input-sm layui-disabled"  value=${user.email}>
                    </div>
                </div>
            </div>
        </div>


    </form>
</div>
</body>
</html>