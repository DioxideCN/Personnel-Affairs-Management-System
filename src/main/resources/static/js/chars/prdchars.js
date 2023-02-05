// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('main'));
// 指定图表的配置项和数据
myChart.setOption({
    title: {
        text: '商品销售产量关系图'
    },
    tooltip: {},
    legend: {
        data: ['销售额', '生产量']
    },
    xAxis: {
        // data: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"]
        data: []
    },
    yAxis: {},
    series: [{
        name: '销售额',
        type: 'bar',
        data: []
    }, {
        name: '生产量',
        type: 'bar',
        data: [],
        itemStyle: {
            normal: { //柱子颜色
                color: 'blue'
            }
        },
    }]
});
myChart.showLoading();//异步加载显示加载中

// var url = "/RoleController/queryBindMenuByRid.json?" + $.param({rId: rIdVal});
var url = "/productController/initPrdSalePrcChars";
// 异步加载数据
sendAjax.sendGetAjax(url, $.param({pId: 1}), function (res) {
    if (res.status) {
        var xAxisData = res.data.xAxisData;
        var seriesList = res.data.seriesList;
        // 填入数据
        myChart.setOption({
            xAxis: {
                data: xAxisData
            },
            series: seriesList
            // series: [{
            //     // 根据名字对应到相应的系列
            //     name: '销量',
            //     data: data.data
            // }, {
            //     name: '生产量',
            //     data: data.data
            // }]
        });
    } else {
        layer.msg(res.msg, {icon: 2, time: 1500});
    }
})

