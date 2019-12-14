<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/11
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="assets/css/layui.css">
    <link rel="stylesheet" href="assets/css/view.css"/>
    <link rel="icon" href="/favicon.ico">
    <title>管理后台</title>
</head>
<body class="layui-view-body">
<div class="layui-content">
    <div class="layui-page-header">
        <div class="pagewrap">
                <span class="layui-breadcrumb">
                  <a href="">首页</a>
                  <a href="">视频</a>
                  <a><cite>视频审核</cite></a>
                </span>
            <h2 class="title">待审核视频</h2>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-card">
            <div class="layui-card-body">
                <div class="form-box">

                    <table id="demo"></table>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="assets/layui.all.js"></script>
<script>
    var element = layui.element;
    var table = layui.table;
    var form = layui.form;

    //展示已知数据
    table.render({
        elem: '#demo'
        ,cols: [[ //标题栏
            {field: 'id', title: '序列号', width: 120, sort: true}
            ,{field: 'experience', title: '作者', width: 160, sort: true}
            ,{field: 'area', title: '分区', width: 160, sort: true}
            ,{field: 'username', title: '标题', width: 160 }
            ,{field: 'photo', title: '封面', width: 160,templet: function(d){
                    return '<a class="layui-btn layui-btn-xs layui-btn-img" href="showdetail.jsp"><img src="images/14.jpg" width="40"> </a>'
                }}

            ,{field: 'LoginTime', title: '上传时间', minwidth: 80, sort: true}
            ,{field: 'status', title: '状态', width: 160 }
            ,{field: 'tempId', title: '操作',width: 100, templet: function(d){
                    return '<a class="layui-btn layui-btn-xs layui-btn-danger"  onclick="del(1001)"><i class="layui-icon layui-icon-face-surprised"></i>通过</a>';
                }}
            ,{field: 'tempId', title: '',width: 100, templet: function(d){
                    return '<a class="layui-btn layui-btn-xs layui-btn-danger"   onclick="del(1001)"><i class="layui-icon layui-icon-close-fill"></i>打回</a>';
                }}
        ]]
        ,data: [{
            "id": "10001"
            ,"username": "杜甫"
            ,"area": "浙江杭州"
            ,"status": "待审核"
            ,"experience": "116"
            ,"LoginTime": "2019-12-12"
        }, {
            "id": "10002"
            ,"username": "李白"
            ,"area": "浙江杭州"
            ,"status": "待审核"
            ,"experience": "116"
            ,"LoginTime": "2019-12-11"
        }]
        ,skin: 'line' //表格风格
        ,even: true
        ,page: true //是否显示分页
        ,limits: [5, 7, 10]
        ,limit: 5 //每页默认显示的数量
    });
    function del(id) {
        alert(id);
    }

</script>
</body>
</html>