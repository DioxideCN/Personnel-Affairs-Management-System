<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>曾小白系统</title>
    <link rel="stylesheet" type="text/css" href="../static/frame/layui-v2.5.6/layui/css/layui.css">
    <script src="../static/frame/jquery-v3.5.1/jquery-3.5.1.js"></script>
    <script src="../static/frame/layui-v2.5.6/layui/layui.js"></script>
    <script type="text/javascript" src="../../static/js/common/util.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">曾小白系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <#--            <li class="layui-nav-item"><a href="">控制台</a></li>-->
            <#--            <li class="layui-nav-item"><a href="">商品管理</a></li>-->
            <#--            <li class="layui-nav-item"><a href="">用户</a></li>-->
            <li class="layui-nav-item">
                <a href="javascript:;">控制台</a>
                <dl class="layui-nav-child">
                    <dd><a url="/showDeafult.html" onclick="tabshow(this)">首页</a></dd>
                    <dd><a url="/showChars.html" onclick="tabshow(this)">商品统计</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a url="/NoticeController/showIndex.html" onclick="tabshow(this)">消息通知
                    <span id="noticeNum" class="layui-badge">${noticeNum}</span>
                </a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif?imageView2/1/w/80/h/80"
                         class="layui-nav-img">
                    ${userDao.uName}
                </a>
                <dl class="layui-nav-child">
                    <dd><a onclick="basecar_view()">基本资料</a></dd>
                    <dd><a onclick="reloadPw()">重置密码</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="${request.contextPath}/logout.html">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                ${roleMenus}
                <#--                <li class="layui-nav-item layui-nav-itemed">-->
                <#--                    <a class="" href="javascript:;">基础功能</a>-->
                <#--                    <dl class="layui-nav-child" >-->
                <#--                        <dd ><a  url="/LogController/hello.html" onclick="tabshow(this)" >日志管理</a></dd>-->
                <#--                        <dd><a  url="/userlist.html" onclick="tabshow(this)">用户管理</a></dd>-->
                <#--                        <dd><a  url="/RoleController/role_native.html" onclick="tabshow(this)">角色管理</a></dd>-->
                <#--                    </dl>-->
                <#--                </li>-->
                <#--                <li class="layui-nav-item">-->
                <#--                    <a href="javascript:;">权限管理</a>-->
                <#--                    <dl class="layui-nav-child">-->
                <#--                        <dd><a  url="/menuController/showindex.html" onclick="tabshow(this)">菜单管理</a></dd>-->
                <#--&lt;#&ndash;                        <dd><a id="rolepartimContrl" url="/">角色权限管理</a></dd>&ndash;&gt;-->
                <#--                    </dl>-->
                <#--                </li>-->
                <#--                <li class="layui-nav-item"><a href="">发布商品</a></li>-->
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <iframe src="/showSYpage.html" id="main" class="showiframe" width="100%" style="height: 99.9%"
                frameborder="0"></iframe>
        <div class="layui-footer">
            <!-- 底部固定区域 -->
            © layui.com - 底部固定区域
        </div>
    </div>

</div>

<script src="../static/js/system.js"></script>
<script type="text/javascript" src="../../static/js/notice/notice.js"></script>
</body>
</html>