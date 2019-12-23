<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/21
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%
    String bashPath=request.getContextPath();
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>404</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="<%=bashPath%>/jsp/backs/css/bootstrap.min.css" >
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="<%=bashPath%>/jsp/backs/css/style.css" rel='stylesheet' type='text/css' />
    <link href="<%=bashPath%>/jsp/backs/css/style-responsive.css" rel="stylesheet"/>
    <!-- font CSS -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="<%=bashPath%>/jsp/backs/css/font.css" type="text/css"/>
    <link href="<%=bashPath%>/jsp/backs/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <script src="<%=bashPath%>/jsp/backs/js/jquery2.0.3.min.js"></script>
</head>
<body>
<!--main content start-->
<div class="eror-w3">
    <div class="agile-info">
        <h3>SORRY</h3>
        <h2>404</h2>
        <p>An error Occurred in the Application And Your Page could not be Served.</p>
        <a href="<%=bashPath%>/VideoIndexServlet">go home</a>
    </div>
</div>
<script src="<%=bashPath%>/jsp/backs/js/bootstrap.js"></script>
<script src="<%=bashPath%>/jsp/backs/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="<%=bashPath%>/jsp/backs/js/scripts.js"></script>
<script src="<%=bashPath%>/jsp/backs/js/jquery.slimscroll.js"></script>
<script src="<%=bashPath%>/jsp/backs/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="<%=bashPath%>/jsp/backs/js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="<%=bashPath%>/jsp/backs/js/jquery.scrollTo.js"></script>
</body>
</html>