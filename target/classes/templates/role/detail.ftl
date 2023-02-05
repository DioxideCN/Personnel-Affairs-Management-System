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
    <script src="../../static/frame/layui-v2.5.6/layui/layui.js" charset="utf-8"></script>
    <script src="../../static/js/common/info.js" charset="utf-8"></script>
    <script src="../../static/js/role/role.js" charset="utf-8"></script>
</head>
<body>
<div id="app">
    <form class="layui-form add-form">

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">角色名称<span style="color:red;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="text" name="rId"  hidden value=${role.rId} >
                        <input type="text" maxlength="30" name="rName" lay-verify="required" placeholder="请输入角色名称"
                               class="layui-input layui-input-sm layui-disabled"  disabled value=${role.rName} >
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">角色描述<span style="color:red;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="text" maxlength="30" name="rDesc" lay-verify="required" placeholder="请输入角色描述"
                               class="layui-input layui-input-sm layui-disabled" disabled value=${role.rDesc}>
                    </div>
                </div>
            </div>
        </div>




    </form>
</div>
</body>
</html>