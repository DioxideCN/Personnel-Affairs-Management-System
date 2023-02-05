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
    <script type="text/javascript" src="../../static/js/common/util.js"></script>
    <script src="../../static/frame/echars/echarts.min.js"></script>
</head>
<body>


<div id="line" style="width: 100%;height:400px; margin-top: 30px"></div>
<div class="col-md-6" style="float:left;">
    <div id="main" style="width: 600px;height:400px; margin-top: 30px;margin-left: 30px"></div>
</div>
<div class="col-md-6" style="float:right;">
    <div id="raids" style="width: 600px;height:400px; margin-top: 30px;margin-right: 30px"></div>
</div>


<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var lineChart = echarts.init(document.getElementById('line'));
    var myChart = echarts.init(document.getElementById('main'));
    var myradisChart = echarts.init(document.getElementById('raids'));
    //折线图
    lineChart.setOption({
        title: {
            text: '商品销量产量关系折线图'
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['销售量(件)', '生产量(件)']
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
            data: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"]
        },
        yAxis: {
            type: 'value'
        },
        series: [
            {
                name: '销售量(件)',
                type: 'line',
                stack: '总量',
                data: []
            },
            {
                name: '生产量(件)',
                type: 'line',
                stack: '总量',
                data: []
            }
        ]

    })

    // 指定图表的配置项和数据
    //柱状图
    myChart.setOption({
        title: {
            text: '商品销售产量关系图'
        },
        tooltip: {},
        legend: {
            data: ['销售量(件)', '生产量(件)']
        },
        xAxis: {
            data: []
        },
        yAxis: {},
        series: []
    });
    //饼图
    myradisChart.setOption({
        title: {
            text: '产品销售量饼图分布图',
            subtext: '纯属虚构',
            left: 'center'
        },
        tooltip: {
            trigger: 'item'
        },
        legend: {
            orient: 'vertical',
            left: 'right',
        },
        series: [
            {
                name: '访问来源',
                type: 'pie',
                radius: '50%',
                data: [],
                emphasis: {
                    itemStyle: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    },
                }
            }
        ]
    })

    var url = "/productController/initPrdSalePrcChars.json";
    // 异步加载数据
    sendAjax.sendGetAjax(url, $.param({pId: 1}), function (res) {
        // myChart.hideLoading();  // 隐藏 loading 效果
        if (res.status) {
            var xAxisData = res.data.xaxisData;
            var seriesList = res.data.seriesList;
            // 填入柱状图数据
            myChart.setOption({
                xAxis: {
                    data: xAxisData
                },
                series: [
                    {
                        name: seriesList[0].name,
                        type: 'bar',
                        data: seriesList[0].data
                    }, {
                        name: seriesList[1].name,
                        type: 'bar',
                        data: seriesList[1].data,
                        itemStyle: {
                            normal: { //柱子颜色
                                color: 'blue'
                            }
                        },
                    },
                ]
            });

            //填入饼图数据
            myradisChart.setOption({
                series: [
                    {
                        name: '销售量饼图',
                        type: 'pie',
                        radius: '50%',
                        data: [
                            {value: seriesList[0].data[0], name: xAxisData[0]},
                            {value: seriesList[0].data[1], name: xAxisData[1]},
                            {value: seriesList[0].data[2], name: xAxisData[2]},
                            {value: seriesList[0].data[3], name: xAxisData[3]},
                            {value: seriesList[0].data[4], name: xAxisData[4]},
                            {value: seriesList[0].data[5], name: xAxisData[5]},
                            {value: seriesList[0].data[6], name: xAxisData[6]},
                            {value: seriesList[0].data[7], name: xAxisData[7]},
                            {value: seriesList[0].data[8], name: xAxisData[8]},
                            {value: seriesList[0].data[9], name: xAxisData[9]},
                            {value: seriesList[0].data[10], name: xAxisData[10]},
                            {value: seriesList[0].data[11], name: xAxisData[11]}
                        ],
                        emphasis: {
                            itemStyle: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }
                ]
            })
            var saleRes = new Array();
            var prdRes = new Array();
            for (let i = 0; i < seriesList[0].data.length; i++) {
                saleRes.push(seriesList[0].data[i]);
                prdRes.push(seriesList[1].data[i]);
            }
            //填入折线图数据
            lineChart.setOption({
                series: [
                    {
                        name: '销售量(件)',
                        type: 'line',
                        stack: '总量',
                        data: saleRes
                    },
                    {
                        name: '生产量(件)',
                        type: 'line',
                        stack: '总量',
                        data: prdRes
                    }
                ]
            })
        } else {
            layer.msg(res.msg, {icon: 2, time: 1500});
        }
    })


    // //饼图
    // option = {
    //     title: {
    //         text: '某站点用户访问来源',
    //         subtext: '纯属虚构',
    //         left: 'center'
    //     },
    //     tooltip: {
    //         trigger: 'item'
    //     },
    //     legend: {
    //         orient: 'vertical',
    //         left: 'right',
    //     },
    //     series: [
    //         {
    //             name: '访问来源',
    //             type: 'pie',
    //             radius: '50%',
    //             data: [
    //                 {value: 1048, name: '搜索引擎'},
    //                 {value: 735, name: '直接访问'},
    //                 {value: 580, name: '邮件营销'},
    //                 {value: 484, name: '联盟广告'},
    //                 {value: 300, name: '视频广告'}
    //             ],
    //             emphasis: {
    //                 itemStyle: {
    //                     shadowBlur: 10,
    //                     shadowOffsetX: 0,
    //                     shadowColor: 'rgba(0, 0, 0, 0.5)'
    //                 }
    //             }
    //         }
    //     ]
    // };

    // // 使用刚指定的配置项和数据显示图表。
    // myradisChart.setOption(option);
</script>


</body>
</html>