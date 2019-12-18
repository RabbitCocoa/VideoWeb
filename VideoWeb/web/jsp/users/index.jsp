<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/13
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //取得项目路径
    String bashPath=request.getContextPath();
    String dirPath="jsp/users";
%>
<!DOCTYPE html>
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
</head>
<body>
<section id="container">
    <header class="header fixed-top clearfix">
        <!--logo start-->
        <div class="brand">
            <a href="<%=bashPath%>/index.jsp" class="logo">
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
                        <img alt="缓存等待.." src="<%=bashPath%>/${sessionScope.user.photo}">
                        <span class="username">${sessionScope.user.nickname}</span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">

                        <li><a href="<%=bashPath%>/<%=dirPath%>/Update.jsp"><i class="fa fa-cog"></i>修改密码</a></li>
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
                        <a class="active" href="<%=bashPath%>/UserInfoServlet">
                            <i class="fa fa-dashboard"></i>
                            <span>个人信息</span>
                        </a>
                    </li>

                    <li class="sub-menu">
                        <a href="javascript:;">
                            <i class="fa fa-th"></i>
                            <span>我的视频</span>
                        </a>
                        <ul class="sub">
                            <li><a href="<%=bashPath%>/MyVideoServlet">已发布视频</a></li>
                            <li><a href="<%=bashPath%>/MyExamineServlet">待审核列表</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;">
                            <i class="fa fa-tasks"></i>
                            <span>我要投稿</span>
                        </a>
                        <ul class="sub">
                            <li><a href="<%=bashPath%>/<%=dirPath%>/Contribute.jsp">视频投稿</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;">
                            <i class="fa fa-glass"></i>
                            <span>我的收藏</span>
                        </a>
                        <ul class="sub">
                            <li><a href="<%=bashPath%>/VHistoryServlet">历史记录</a></li>
                            <li><a href="<%=bashPath%>/VHistoryServlet">收藏夹</a></li>
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

            <!-- //market-->
            <div class="market-updates">
                <div class="col-md-3 market-update-gd">
                    <div class="market-update-block clr-block-2">
                        <div class="col-md-4 market-update-right">
                            <i class="fa fa-eye"> </i>
                        </div>
                        <div class="col-md-8 market-update-left">
                            <h4>视频观看量</h4>
                            <h3>${videoflows}</h3>
                            <p>今日新增:${todayvideoflows}</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="col-md-3 market-update-gd">
                    <div class="market-update-block clr-block-1">
                        <div class="col-md-4 market-update-right">
                            <i class="fa fa-toggle-right" ></i>
                        </div>
                        <div class="col-md-8 market-update-left">
                            <h4>已发布视频</h4>
                            <h3>${videonums}</h3>
                            <p>今日新增:${todayvideonums}</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="col-md-3 market-update-gd">
                    <div class="market-update-block clr-block-3">
                        <div class="col-md-4 market-update-right">
                            <i class="fa fa-heart"></i>
                        </div>
                        <div class="col-md-8 market-update-left">
                            <h4>视频收藏量</h4>
                            <h3>${videocollects}</h3>
                            <p>今日新增:${todayvideocollects} </p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="col-md-3 market-update-gd">
                    <div class="market-update-block clr-block-4">
                        <div class="col-md-4 market-update-right">
                            <i class="fa fa-thumbs-o-up" ></i>

                        </div>
                        <div class="col-md-8 market-update-left">
                            <h4>收到的赞</h4>
                            <h3>${zans}</h3>
                            <p>今日新增:${todayzans}</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <!-- //market-->
            <!-- //tasks -->
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            个人信息
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                             </span>
                        </header>
                        <div class="panel-body">
                            <div class=" form">
                                <form class="cmxform form-horizontal "  id="commentForm" method="post" action="<%=bashPath%>/updateUserinfoServlet" novalidate="novalidate">
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">昵称</label>
                                        <div class="col-lg-6">
                                            <input  class=" form-control" id="cname" name="Nickname" minlength="2" type="text" value="${sessionScope.user.nickname}" >
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">用户名</label>
                                        <div class="col-lg-6">
                                            <input readonly="readonly" class=" form-control" id="id" name="Name" minlength="2" type="text" value="${sessionScope.user.name}" >
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-3">邮箱</label>
                                        <div class="col-lg-6">
                                            <input   class="form-control " id="cemail" type="email" name="Email" value="${sessionScope.user.email}" >
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="ccomment" class="control-label col-lg-3">签名</label>
                                        <div class="col-lg-6">
                                            <textarea   class="form-control " id="ccomment" name="Des">${sessionScope.user.des}</textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                            <button class="btn btn-primary"  type="submit">保存</button>
                                        </div>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </section>
                </div>
            </div>


            <div class="agileits-w3layouts-stats">

                <div class="col-md-4 stats-info widget">
                    <div class="stats-info-agileits">
                        <div class="stats-title">
                            <h4 class="title">投稿比例</h4>
                        </div>
                        <div class="stats-body">
                            <ul class="list-unstyled">
                                <li>动画 <span class="pull-right">${canimation}%</span>
                                    <div class="progress progress-striped active progress-right">
                                        <div class="bar green" style="width:${canimation}%;"></div>
                                    </div>
                                </li>
                                <li>音乐 <span class="pull-right">${cmusic}%</span>
                                    <div class="progress progress-striped active progress-right">
                                        <div class="bar yellow" style="width:${cmusic}%;"></div>
                                    </div>
                                </li>
                                <li>游戏 <span class="pull-right">${cgame}%</span>
                                    <div class="progress progress-striped active progress-right">
                                        <div class="bar red" style="width:${cgame}%;"></div>
                                    </div>
                                </li>
                                <li>番剧 <span class="pull-right">${ccartoon}%</span>
                                    <div class="progress progress-striped active progress-right">
                                        <div class="bar blue" style="width:${ccartoon}%;"></div>
                                    </div>
                                </li>
                                <li>影视 <span class="pull-right">${cmovie}%</span>
                                    <div class="progress progress-striped active progress-right">
                                        <div class="bar light-blue" style="width:${cmovie}%;"></div>
                                    </div>
                                </li>
                                <li class="last">美食 <span class="pull-right">${cfood}%</span>
                                    <div class="progress progress-striped active progress-right">
                                        <div class="bar orange" style="width:${cfood}%;"></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-8 stats-info stats-last widget-shadow">
                    <div class="stats-last-agile">
                        <table class="table stats-table ">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>标题</th>
                                <th>状态</th>
                                <th>封面</th>
                                <th>点赞</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${movelist}" var="move" varStatus="v">
                            <tr>
                                <th scope="row">${v.index+1}</th>
                                <td>${move.title}</td>
                                <td><span class="label label-success">${move.state}</span></td>
                                <td><h5 class="down"><img src="<%=bashPath%>/${move.psrc}" width="200px"></h5></td>
                                <td>${move.zan}</td>
                            </tr>
                            </c:forEach>
                            </tbody>

                        </table>
                    </div>
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