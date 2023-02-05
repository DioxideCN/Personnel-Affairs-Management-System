<!DOCTYPE html>
<HTML>
<HEAD>
    <TITLE> ZTREE DEMO - beforeEditName / beforeRemove / onRemove / beforeRename / onRename</TITLE>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="../static/frame/layui-v2.5.6/layui/css/layui.css">
    <link rel="stylesheet" href="../../static/css/zTreeStyle/zTreeChange.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/menu/menu.css" type="text/css">
    <script src="../../static/frame/jquery-v3.5.1/jquery-3.5.1.js" charset="utf-8"></script>
    <script src="../../static/frame/layui-v2.5.6/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../../static/frame/jquery/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="../../static/frame/jquery/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="../../static/js/common/util.js"></script>
    <script type="text/javascript" src="../../static/js/common/excheck.js"></script>
    <script type="text/javascript" src="../../static/js/common/exedit.js"></script>
    <script type="text/javascript" src="../../static/js/menu/index.js"></script>
    <style type="text/css">
        .ztree li span.button.add {margin-left:2px; margin-right: -1px; background-position:-144px 0; vertical-align:top; *vertical-align:middle}
    </style>
</HEAD>

<BODY>

<div class="content_wrap">
    <div class="zTreeDemoBackground left">
        <ul id="treeDemo" class="ztree" style="border: 3px solid #617775;height: 100%;background:white;"></ul>
    </div>
</div>

<div class="layui-body" style="left: 230px;overflow-y:hidden">
    <!-- 内容主体区域 -->
    <iframe src="/showDeafult.html" id="main" class="showTreeiframe"  width="100%" style="height: 99.9%" frameborder="0"></iframe>

</div>
</BODY>
</HTML>