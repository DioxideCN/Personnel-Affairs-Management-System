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
    <script src="../../static/js/product/product.js" charset="utf-8"></script>
</head>
<body>
<div id="app">
    <form class="layui-form add-form" method="post" action="${request.contextPath}/productController/updateProduct.json">

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">商品编号<span style="color:red;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="text" maxlength="20" name="pId" lay-verify="required" disabled placeholder="请输入商品编号"
                             value="${product.pId}"  class="layui-input layui-input-sm layui-disabled">
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">商品名称<span style="color:red;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="text" maxlength="20" name="pName" lay-verify="required" placeholder="请输入商品名称"
                               value="${product.pName}"     class="layui-input layui-input-sm ">
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">商品金额(元)<span style="color:red;">*</span>：</label>
                    <div class="layui-input-block">
                        <input type="number"  name="pMoney" lay-verify="required||money" placeholder="请输入商品金额"
                               value="${product.pMoney}"    class="layui-input layui-input-sm ">
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
<#--                        <button type="reset" class="layui-btn layui-btn-primary layui-btn-sm">重置</button>-->
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>