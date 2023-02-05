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
    <script src="../../static/frame/jquery-v3.5.1/jquery-3.5.1.js" charset="utf-8"></script>
    <script type="text/javascript" src="../../static/js/common/util.js"></script>
    <script src="../../static/js/notice/notice.js"></script>
</head>
<body>


<form id="search_form" class="_search layui-form">
    <div class="layui-form-item">

        <div class="layui-inline">
            <label class="layui-form-label">收件时间：</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" id="test13" name="reviceTime" placeholder="yyyyMMdd">
            </div>
        </div>


        <div class="layui-inline">
            <label class="layui-form-label">是否已读：</label>
            <div class="layui-input-inline">
                <select name="isReaded"  >
                    <option value="">请选择</option>
                    <option value="0">未读</option>
                    <option value="1">已读</option>
                </select>
            </div>
        </div>

        <div class="layui-inline">
            <label class="layui-form-label">发件人：</label>
            <div class="layui-input-inline">
                <input type="text" id="createUser" name="sendMan" class="layui-input search-input layui-input-sm">
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
        <button class="layui-btn layui-btn-sm" lay-event="sendEmail.html">
            <i class="layui-icon">&#xe63a;</i>
            写信</button>
        <button class="layui-btn layui-btn-sm layui-btn-normal" lay-event="detail.html">
            <i class="layui-icon">&#xe60f;</i>
            查看</button>
        <button class="layui-btn layui-btn-sm " lay-event="allreaded.json">
            <i class="layui-icon">&#x1005;</i>
            全部已读</button>
        <button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="suchDelete.json">
            <i class="layui-icon">&#xe640;</i>
            删除</button>
    </div>
</script>


</body>
</html>