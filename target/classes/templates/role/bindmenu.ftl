<!DOCTYPE html>
<HTML>
<HEAD>
    <TITLE> ZTREE DEMO - checkbox</TITLE>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
<#--    <link rel="stylesheet" href="../../static/css/role/demo.css" type="text/css">-->
    <link rel="stylesheet" href="../../static/frame/layui-v2.5.6/layui/css/layui.css">
    <link rel="stylesheet" href="../../static/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/role/bindmenu.css">
    <script src="../../static/frame/jquery-v3.5.1/jquery-3.5.1.js" charset="utf-8"></script>
    <script src="../../static/frame/layui-v2.5.6/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../../static/frame/jquery/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="../../static/js/common/util.js"></script>
    <script type="text/javascript" src="../../static/js/common/excheck.js"></script>
    <script type="text/javascript" src="../../static/js/common/exedit.js"></script>
    <script type="text/javascript" src="../../static/js/common/util.js"></script>
    <script type="text/javascript" src="../../static/js/role/bindmenu.js"></script>
</HEAD>

<BODY>

<div class="content_wrap">
    <input id="rIdVal" hidden type="text" value=${rId}>
    <div class="zTreeDemoBackground left">
        <ul id="treeDemo" class="ztree"></ul>
    </div>


    <div class="layui-row">
        <div class="layui-col-xs12">
            <div class="layui-form-item" >
                <div class="layui-input-block">
                    <button id="bindmenu_save" onclick="save_clink()" class="layui-btn btn-primary layui-btn-sm"
                            lay-filter="save_form">保存
                    </button>
                    <button id="bindmenu_reset" type="reset" class="layui-btn layui-btn-primary layui-btn-sm">重置</button>
                </div>
            </div>
        </div>
    </div>


</div>
</BODY>
</HTML>