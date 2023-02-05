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
    <link rel="stylesheet" href="../../static/css/menu/menu.css">
    <script src="../../static/frame/jquery-v3.5.1/jquery-3.5.1.js" charset="utf-8"></script>
    <script src="../../static/frame/layui-v2.5.6/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../../static/js/common/util.js"></script>
    <script src="../../static/js/common/info.js" charset="utf-8"></script>
    <script src="../../static/js/menu/detail.js" charset="utf-8"></script>

</head>
<body>
<div id="app">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 21px;font-style: inherit;font-weight: 900;">
        <legend>
            <i class="layui-icon">&#xe654;</i>
            详情界面</legend>
    </fieldset>
    <form class="layui-form add-form" >

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">父级菜单<span style="color:red;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="text" maxlength="30" name="pMenuName" lay-verify="required" disabled
                               class="layui-input layui-input-sm layui-disabled" value=${p_menu}>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">菜单名称<span style="color:red;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="text" maxlength="30" name="mName" disabled lay-verify="required"
                               class="layui-input layui-input-sm layui-disabled" value=${menuDao.mName}>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">菜单URL<span style="color:red;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="text" maxlength="70" name="mUrl"  disabled lay-verify="required" placeholder="请输入菜单URL"
                               class="layui-input layui-input-sm layui-disabled" value=${menuDao.mUrl}>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">菜单icon<span style="color:red;">*</span>：</label>
                    <input type="hidden" name="hidden-icon" id="hidden-icon" value=${menuDao.mIcon}>
                    <div class="layui-input-block">
                            <select name="mIcon" lay-verify="required" disabled lay-filter="selectIcon2">
                                <option value="">请选择</option>
                                <option value="0"></option>
                                <option value="1"></option>
                                <option value="2"></option>
                                <option value="3"></option>
                                <option value="4"></option>
                                <option value="5"></option>
                                <option value="6"></option>
                            </select>
                    </div>
                </div>
            </div>
        </div>


        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">排序号<span style="color:red;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="number" name="mSort" lay-verify="required|num" disabled placeholder="请输入排序号"
                               class="layui-input layui-input-sm layui-disabled" value=${menuDao.mSort}>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">菜单描述<span style="color:red;"></span>：</label>
                    <div class="layui-input-block">
                        <input type="text" maxlength="30" name="mDesc" disabled
                               class="layui-input layui-input-sm layui-disabled">
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">是否用于导航<span style="color:red;">*</span>：</label>
            <div class="layui-input-block" >
                <#if menuDao.isNavigtion="0">
                    <input type="radio" name="isNavigtion" value="0" title="是" disabled checked="">
                    <input type="radio" name="isNavigtion" value="1"  disabled title="否">
                <#else>
                    <input type="radio" name="isNavigtion" value="0" disabled title="是">
                    <input type="radio" name="isNavigtion" value="1" disabled title="否" checked="">
                </#if>
            </div>
        </div>

    </form>
</div>
</body>
</html>