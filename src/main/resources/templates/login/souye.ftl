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
    <script src="../../static/frame/layui-v2.5.6/layui/layui.js"></script>
    <script src="../../static/frame/jquery-v3.5.1/jquery-3.5.1.js" charset="utf-8"></script>
    <script type="text/javascript" src="../../static/js/common/util.js"></script>
    <script src="../../static/frame/echars/echarts.min.js"></script>
</head>
<body>

<div id="line" style="width: 100%;height:400px; margin-top: 30px"></div>


<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var lineChart = echarts.init(document.getElementById('line'));


    // 指定图表的配置项和数据
    //折线图
    lineChart.setOption({
        title: {
            text: '近七日访问量'
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['访问量(人)']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: []
        },
        yAxis: {
            type: 'value'
        },
        series: [
            {
                name: '访问量(人)',
                type: 'line',
                stack: '总量',
                data: []
            }
        ]

    })
    var url = "/staticSevenDayLog.json";
    //初始化chars数据
    init();

    function init() {
        sendAjax.sendGetAjax(url, null, function (res) {

            console.log("进入初始化！");
            if (res.status) {
                var dates = res.data.date;
                var num = res.data.num;
                //填入折线图数据
                //填入折线图数据
                lineChart.setOption({
                    title: {
                        text: '近七日访问量'
                    },
                    xAxis: {
                        type: 'category',
                        boundaryGap: false,
                        data: dates
                    },
                    series: [
                        {
                            name: '访问量(人)',
                            type: 'line',
                            stack: '总量',
                            data: num
                        }
                    ]
                })
                layui.use('layer', function(){ //独立版的layer无需执行这一句
                    layui.layer.msg(res.msg, {icon: 1, time: 1500});
                });
            } else {
                layui.use('layer', function () { //独立版的layer无需执行这一句
                    layui.layer.msg(res.msg, {icon: 2, time: 1500});
                });
            }
        })
    }
</script>


</body>
</html>