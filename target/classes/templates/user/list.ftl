<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<#--<link rel="stylesheet" href="//res.layui.com/layui/dist/css/layui.css"  media="all">-->
    <link rel="stylesheet" href="../../static/frame/layui-v2.5.6/layui/css/layui.css">
    <link rel="stylesheet" href="../../static/css/log/log.css">
    <script src="../../static/frame/jquery-v3.5.1/jquery-3.5.1.js" charset="utf-8"></script>
    <script src="../../static/js/user/user.js" charset="utf-8"></script>
</head>
<body>


<form id="search_form" class="_search">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">用户名称：</label>
            <div class="layui-input-inline">
                <input type="text" id="uName" name="uName" class="layui-input search-input layui-input-sm">
            </div>
        </div>

        <div class="layui-inline">
            <button id="search_btn" type="button" class="layui-btn btn-success layui-btn-sm"><i
                    class="fa fa-fw fa-search"></i>&#8197;搜&#8197;索
            </button>
            <button id="reset_btn" type="reset" class="layui-btn btn-dark layui-btn-sm"><i
                    class="fa fa-fw fa-refresh"></i>&#8197;重&#8197;置
            </button>
        </div>
    </div>
</form>


<table class="layui-hide" id="test" lay-filter="test"></table>
<script src="../../static/frame/layui-v2.5.6/layui/layui.js" charset="utf-8"></script>
<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="add.html">
            <i class="layui-icon">&#xe654;</i>
            新增</button>
        <button class="layui-btn layui-btn-sm layui-btn-warm" lay-event="update.html">
            <i class="layui-icon">&#xe642;</i>
            修改</button>
        <button class="layui-btn layui-btn-sm layui-btn-normal" lay-event="detail.html">
            <i class="layui-icon">&#xe60f;</i>
            详情</button>
        <button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="delete.json">
            <i class="layui-icon">&#xe640;</i>
            删除</button>
    </div>
</script>


</body>
</html>