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
                  <a href="">用户</a>
                  <a><cite>用户组</cite></a>
                </span>
            <h2 class="title">用户组</h2>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-card">
            <div class="layui-card-body">
                <div class="form-box">
                    <div class="layui-form layui-form-item">
                        <div class="layui-inline">
                            <div class="layui-form-mid">用户名:</div>
                            <div class="layui-input-inline" style="width: 100px;">
                                <input type="text" autocomplete="off" class="layui-input">
                            </div>
                            <div class="layui-form-mid">昵称:</div>
                            <div class="layui-input-inline" style="width: 100px;">
                                <input type="text" autocomplete="off" class="layui-input">
                            </div>
                            <div class="layui-form-mid">性别:</div>
                            <div class="layui-input-inline" style="width: 100px;">
                                <select name="sex">
                                    <option value="1">男</option>
                                    <option value="2">女</option>
                                </select>
                            </div>
                            <button class="layui-btn layui-btn-blue">查询</button>
                        </div>
                    </div>

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
            {field: 'id', title: '用户名', width: 100, sort: true}
            ,{field: 'username', title: '昵称', width: 120}
            ,{field: 'email', title: '邮箱', minWidth: 80}
            ,{field: 'state', title: '状态', minWidth: 80}
            ,{field: 'CreateTime', title: '创建时间', minWidth: 120, sort: true}
            ,{field: 'LoginTime', title: '最后登陆时间', minWidth: 120, sort: true}
            ,{field: 'experience', title: '视频点赞数', width: 120, sort: true}
            ,{field: 'tempId', title: '操作',width: 120, templet: function(d){
                    return '<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del"  onclick="del(1001)"><i class="layui-icon layui-icon-delete"></i>封禁</a>';
                }}
        ]]
        ,data: [{
            "id": "10001"
            ,"username": "杜甫"
            ,"email": "xianxin@layui.com"
            ,"state": "正常"
            ,"city": "浙江杭州"
            ,"experience": "116"
            ,"CreateTime": "2017-12-12"
            ,"LoginTime": "2019-12-12"
        }, {
            "id": "10002"
            ,"username": "李白"
            ,"email": "xianxin@layui.com"
            ,"city": "浙江杭州"
            ,"experience": "116"
            ,"CreateTime": "2017-12-12"
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