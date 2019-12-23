<%@ page import="edu.fzu.sm.CONST" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/13
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //取得项目路径
    String bashPath=request.getContextPath();
    //当前文件目录
    String dirPath="jsp/backs";
%>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="<%=bashPath%>/<%=dirPath%>/css/bootstrap.min.css" >
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="<%=bashPath%>/<%=dirPath%>/css/style.css" rel='stylesheet' type='text/css' />
    <link href="<%=bashPath%>/<%=dirPath%>/css/style-responsive.css" rel="stylesheet"/>
    <!-- font CSS -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="<%=bashPath%>/<%=dirPath%>/css/font.css" type="text/css"/>
    <link href="<%=bashPath%>/<%=dirPath%>/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=bashPath%>/<%=dirPath%>/css/morris.css" type="text/css"/>
    <!-- calendar -->
    <link rel="stylesheet" href="<%=bashPath%>/<%=dirPath%>/css/monthly.css">
    <!-- //calendar -->
    <!-- //font-awesome icons -->
    <script src="<%=bashPath%>/<%=dirPath%>/js/jquery2.0.3.min.js"></script>
    <script src="<%=bashPath%>/<%=dirPath%>/js/raphael-min.js"></script>
    <script src="<%=bashPath%>/<%=dirPath%>/js/morris.js"></script>

    <script type="text/javascript">
        function Search(page) {

            var $area=$("#Area").val();
            var $title=$("#Title").val();

            window.location.href = "<%=bashPath%>/VideosListServlet?page="+page+"&Area="+$area+"&Title="+$title;
        }

        function del(vid) {
            var $area=$("#Area").val();
            var $title=$("#Title").val();
            if (confirm('确认该视频应该被驳回吗？')) {
               $.post(
                   "<%=bashPath%>/ExamineFailedServlet",
                   "vid="+vid,
                   function (result) {
                        if(result == 'success')
                        {
                            alert("已驳回该视频");
                            window.location.href = "<%=bashPath%>/VideosListServlet?page=${page}"+"&Area="+$area+"&Title="+$title;

                        }
                        else{
                            alert("操作失败");
                        }

                   },"text"

               )
            }
        }
        function pass(vid) {
            var $area=$("#Area").val();
            var $title=$("#Title").val();
            if (confirm('确认该视频符合审核标准吗？')) {
                $.post(
                    "<%=bashPath%>/ExamineServlet",
                    "vid="+vid,
                    function (result) {
                        if(result == 'success')
                        {
                            alert("审批成功");
                            window.location.href = "<%=bashPath%>/VideosListServlet?page=${page}"+"&Area="+$area+"&Title="+$title;
                        }
                        else{
                            alert("操作失败");
                        }

                    },"text"

                )
            }
        }

        function goLook(vid) {

            window.location.href = "<%=bashPath%>/ToShowVideoServlet?vid="+vid;

        }

    </script>
</head>
<body>
<section id="container">
    <header class="header fixed-top clearfix">
        <!--logo start-->
        <div class="brand">
            <a href="<%=bashPath%>//VideoIndexServlet" class="logo">
                旅团小屋
            </a>
            <div class="sidebar-toggle-box">
                <div class="fa fa-bars"></div>
            </div>
        </div>
        <!--logo end-->

        <div class="top-nav clearfix">
            <!--search & user info start-->
            <ul class="nav pull-right top-menu">
                <li>
                    <input type="text" class="form-control search" placeholder=" Search">
                </li>
                <!-- user login dropdown start-->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <img alt="暂无信息" src="<%=bashPath%>/${sessionScope.user.photo}">
                        <span class="username">${sessionScope.user.name}</span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">
                        <li><a href="<%=bashPath%>/jsp/backs/Update.jsp"><i class="fa fa-cog"></i> 修改密码</a></li>

                        <li><a href="<%=bashPath%>/LogoutServlet"><i class="fa fa-key"></i> 注销</a></li>
                    </ul>
                </li>
                <!-- user login dropdown end -->

            </ul>
            <!--search & user info end-->
        </div>
    </header>

    <aside>
        <div id="sidebar" class="nav-collapse">
            <!-- sidebar menu start-->
            <div class="leftside-navigation">
                <ul class="sidebar-menu" id="nav-accordion">
                    <li>
                        <a class="active" href="<%=bashPath%>/ManagerInfoServlet">
                            <i class="fa fa-dashboard"></i>
                            <span>控制台</span>
                        </a>
                    </li>

                    <li class="sub-menu">
                        <a href="javascript:;">
                            <i class="fa fa-th"></i>
                            <span>视频管理</span>
                        </a>
                        <ul class="sub">
                            <li><a href="<%=bashPath%>/VideosListServlet">视频审核</a></li>
                            <li><a href="<%=bashPath%>/BrowserVideoServlet">视频一览</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;">
                            <i class="fa fa-tasks"></i>
                            <span>用户管理</span>
                        </a>
                        <ul class="sub">
                            <li><a href="<%=bashPath%>/UserListServlet">用户一览</a></li>
                        </ul>
                    </li>

                </ul>
            </div>
            <!-- sidebar menu end-->
        </div>
    </aside>

    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <div class="table-agile-info">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        作品一览
                    </div>
                    <div class="row w3-res-tb">
                        <div class="col-sm-5 m-b-xs">
                            <select name="Area" id="Area"  class="input-sm form-control w-sm inline v-middle">
                                <option value="<%=CONST.AREA_ALL%>" ><%=CONST.AREA_ALL%></option>
                                <c:forEach items="<%=CONST.AREAS%>" var="area">
                                    <option value="${area}">${area}</option>
                                </c:forEach>
                            </select>

                            <button class="btn btn-sm btn-default" onclick="Search(${page})">应用</button>
                        </div>
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-3">
                            <div class="input-group">
                                <input type="text" name="Title"  id="Title" class="input-sm form-control" placeholder="Search">
                                <span class="input-group-btn">
            <button class="btn btn-sm btn-default" onclick="Search(${page})" type="button">搜索</button>
          </span>
                            </div>
                        </div>
                    </div>


                    <div class="table-responsive">
                        <table class="table table-striped b-t b-light">
                            <thead>
                            <tr>
                                <th style="width:20px;">
                                    <label class="i-checks m-b-none">
                                        <input type="checkbox"><i></i>
                                    </label>
                                </th>
                                <th>标题</th>
                                <th>封面</th>
                                <th>分区</th>
                                <th>状态</th>
                                <th>点赞</th>
                                <th>收藏</th>
                                <th>播放量</th>
                                <th>投稿时间</th>
                                <th style="width:30px;"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${videolist}" var="video">
                                <tr>
                                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                                    <td>${video.title}</td>
                                    <td><a href="#"><span class="text-ellipsis"><img  onclick="goLook('${video.vid}')" src="<%=bashPath%>/${video.psrc}" width="200" height="150"></span></a></td>
                                    <td>${video.area}</td>
                                    <c:if test="${video.state eq '审核中'}">
                                        <td><span class="label label-danger">${video.state}</span></td>
                                    </c:if>
                                    <c:if test="${video.state eq '已发布'}">
                                        <td><span class="label label-success">${video.state}</span></td>
                                    </c:if>
                                    <c:if test="${video.state eq '未过审'}">
                                        <td><span class="label label-danger">${video.state}</span></td>
                                    </c:if>
                                    <td>${video.zan}</td>
                                    <td>${video.bcollect}</td>
                                    <td>${video.totalplay}</td>
                                    <td><span class="text-ellipsis">${video.createtime}</span></td>
                                    <td>
                                        <button type="button" onclick="pass('${video.vid}')" style="border: none; background:transparent;" ><i class="fa fa-check text-danger text"></i></button>
                                    </td>
                                    <td>
                                        <button type="button" onclick="del('${video.vid}')" style="border: none; background:transparent;" ><i class="fa fa-times text-danger text"></i></button>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>

                        </table>
                    </div>
                    <footer class="panel-footer">
                        <div class="row">

                            <div class="col-sm-5 text-center">
                                <small class="text-muted inline m-t-sm m-b-sm">showing 20-30 of 50 items</small>
                            </div>
                            <div class="col-sm-7 text-right text-center-xs">
                                <ul class="pagination pagination-sm m-t-none m-b-none">
                                    <li><a onclick="Search(${page}-1)"><i class="fa fa-chevron-left"></i></a></li>
                                    <li><a href="">${page}</a></li>
                                    <li><a onclick="Search(${page}+1)"><i class="fa fa-chevron-right"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </footer>
                </div>
            </div>
        </section>



    </section>
    <!--main content end-->
</section>
<script src="<%=bashPath%>/<%=dirPath%>/js/bootstrap.js"></script>
<script src="<%=bashPath%>/<%=dirPath%>/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="<%=bashPath%>/<%=dirPath%>/js/scripts.js"></script>
<script src="<%=bashPath%>/<%=dirPath%>/js/jquery.slimscroll.js"></script>
<script src="<%=bashPath%>/<%=dirPath%>/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="<%=bashPath%>/<%=dirPath%>/js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->
<script>
    $(document).ready(function() {
        //BOX BUTTON SHOW AND CLOSE
        jQuery('.small-graph-box').hover(function() {
            jQuery(this).find('.box-button').fadeIn('fast');
        }, function() {
            jQuery(this).find('.box-button').fadeOut('fast');
        });
        jQuery('.small-graph-box .box-close').click(function() {
            jQuery(this).closest('.small-graph-box').fadeOut(200);
            return false;
        });

        //CHARTS
        function gd(year, day, month) {
            return new Date(year, month - 1, day).getTime();
        }

        graphArea2 = Morris.Area({
            element: 'hero-area',
            padding: 10,
            behaveLikeLine: true,
            gridEnabled: false,
            gridLineColor: '#dddddd',
            axes: true,
            resize: true,
            smooth:true,
            pointSize: 0,
            lineWidth: 0,
            fillOpacity:0.85,
            data: [
                {period: '2015 Q1', iphone: 2668, ipad: null, itouch: 2649},
                {period: '2015 Q2', iphone: 15780, ipad: 13799, itouch: 12051},
                {period: '2015 Q3', iphone: 12920, ipad: 10975, itouch: 9910},
                {period: '2015 Q4', iphone: 8770, ipad: 6600, itouch: 6695},
                {period: '2016 Q1', iphone: 10820, ipad: 10924, itouch: 12300},
                {period: '2016 Q2', iphone: 9680, ipad: 9010, itouch: 7891},
                {period: '2016 Q3', iphone: 4830, ipad: 3805, itouch: 1598},
                {period: '2016 Q4', iphone: 15083, ipad: 8977, itouch: 5185},
                {period: '2017 Q1', iphone: 10697, ipad: 4470, itouch: 2038},

            ],
            lineColors:['#eb6f6f','#926383','#eb6f6f'],
            xkey: 'period',
            redraw: true,
            ykeys: ['iphone', 'ipad', 'itouch'],
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
            pointSize: 2,
            hideHover: 'auto',
            resize: true
        });


    });
</script>
<!-- calendar -->
<script type="text/javascript" src="<%=bashPath%>/<%=dirPath%>/js/monthly.js"></script>
<script type="text/javascript">
    $(window).load( function() {

        $('#mycalendar').monthly({
            mode: 'event',

        });

        $('#mycalendar2').monthly({
            mode: 'picker',
            target: '#mytarget',
            setWidth: '250px',
            startHidden: true,
            showTrigger: '#mytarget',
            stylePast: true,
            disablePast: true
        });

        switch(window.location.protocol) {
            case 'http:':
            case 'https:':
                // running on a server, should be good.
                break;
            case 'file:':
                alert('Just a heads-up, events will not work when run locally.');
        }

    });
</script>
<!-- //calendar -->
</body>
</html>