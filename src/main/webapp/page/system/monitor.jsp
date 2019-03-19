<%--
  Created by IntelliJ IDEA.
  User: Soya
  Date: 2019/3/15
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/esl.js"></script>
    <script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
</head>
<body>
<div>

</div>
<div id="main" style="width: 50%;height:50%;"></div>
</body>
</html>
<script type="text/javascript">
    var contextPath = '${pageContext.request.contextPath}';
    var myChart;
    var xData = [];
    var xData2 = [];
    var yData = [];
    $(function () {
        $.ajax({
            url: contextPath + '/system/SystemInfo/query',
            type: "POST",
            dataType: "JSON",
            cache: false,  //不缓存
            async: false,  //同步操作，否者局部变量后变化
            success: function (data, textStatus, jqXHR) {
                if (data.success) {
                    var ss = data.data.length;
                    for (var i = 0; i < data.data.length; i++) {
                        xData.push(data.data[i].freeSpace);
                        xData2.push(data.data[i].totalSpace);
                        yData.push(data.data[i].path);
                    }
                } else {
                    console("失败");
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console("失败");
            }
        });
        require.config({
            paths: {
                echarts: 'http://echarts.baidu.com/build/dist'
            }
        });
        require(
            [
                'echarts',
                'echarts/chart/bar'
            ],
            function (ec) {
                myChart = ec.init(document.getElementById('main'));
                var option = {
                    title: {text: '主机磁盘情况监控信息'},
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                            type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                        }, formatter: function (params, ticket, callback) {
                            let obj = params.map((item, index) => {
                                if (item.value == undefined || item.value !== item.value) {
                                    item.value = 0;
                                }
                                let percent = ((item.value / params[params.length - 1].value) * 100).toFixed(2)
                                // 小圆点显示
                                let dotColor = '<span style="display:inline-block;margin-right:5px;border-radius:10px;width:9px;height:9px;background-color:' + item.color + '"></span>'
                                return dotColor + item.seriesName + ":" + item.value + '(' + percent + '%' + ')' + '</br>'
                            })
                            return obj.join('') // 去除','
                        }
                    },
                    legend: {data: ['已用空间', '总空间']},
                    toolbox: {
                        show: true,
                        feature: {
                            mark: {show: true},
                            dataView: {show: true, readOnly: false},
                            magicType: {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                            restore: {show: true},
                            saveAsImage: {show: true}
                        }
                    },
                    calculable: true,
                    xAxis: [
                        {
                            name: "G",
                            type: 'value',
                            axisLabel: {
                                show: true,
                                interval: 'auto',
                                formatter: '{value}G'
                            },
                        }
                    ],
                    yAxis: [
                        {
                            name: "盘",
                            type: 'category', data: yData
                        }
                    ],

                    series: [
                        {
                            name: '已用空间',
                            type: 'bar', //barWidth : 3,
                            stack: '总量',
                            itemStyle: {normal: {label: {show: true, position: 'insideRight'}}}, data: xData
                        },
                        {
                            name: '总空间',
                            type: 'bar',//barWidth : 3,
                            stack: '总量',
                            itemStyle: {normal: {label: {show: true, position: 'insideRight'}}},
                            data: xData2
                        }
                    ]
                };
                myChart.setOption(option);
                myChart.hideLoading();
            }
        );
    });
</script>