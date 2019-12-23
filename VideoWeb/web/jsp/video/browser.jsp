<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="edu.fzu.sm.CONST" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/9
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //取得项目路径
    String bashPath=request.getContextPath();
    String dirPath="jsp/video";
%>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8">
    <title>zFanVideo | Free Video Html5 Templates</title>
    <meta name="description" content="Free Responsive Html5 Css3 Templates | zerotheme.com">
    <meta name="author" content="www.zerotheme.com">

    <!-- Mobile Specific Metas
  ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
  ================================================== -->
    <link rel="stylesheet" href="<%=bashPath%>/<%=dirPath%>/css/zerogrid.css">
    <link rel="stylesheet" href="<%=bashPath%>/<%=dirPath%>/css/style.css">
    <link rel="stylesheet" href="<%=bashPath%>/<%=dirPath%>/css/menu.css">
    <!-- Owl Carousel Assets -->
    <link href="<%=bashPath%>/<%=dirPath%>/css/owl.carousel.css" rel="stylesheet">
    <link href="<%=bashPath%>/<%=dirPath%>/css/owl.theme.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<%=bashPath%>/<%=dirPath%>/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
    </div>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="<%=bashPath%>/<%=dirPath%>/js/html5.js"></script>
    <script src="<%=bashPath%>/<%=dirPath%>/js/css3-mediaqueries.js"></script>
    <![endif]-->
    <script type="text/javascript">
        function  Search() {
            var $s=$("#s").val();
            window.location.href="<%=bashPath%>/VideoBrowserServlet?area=${area}&title="+$s;
        }
    </script>
</head>
<body id="wrapper" >
<div class="wrap-body">

    <!--////////////////////////////////////Header-->
    <header>
        <div class="wrap-header" >
            <div class="zerogrid" >
                <div class="row" >
                    <a href="<%=bashPath%>/VideoIndexServlet" class="logo"><img src="<%=bashPath%>/jsp/video/images/logo3.png" width="180"></a>
                    <ul class="social">
                        <li><a href="<%=bashPath%>/jsp/users/Contribute.jsp" title="发布视频"><i class="fa fa-upload"></i></a></li>
                        <li><a href="<%=bashPath%>/jsp/users/index.jsp" title="个人信息"><i class="fa fa-user"></i></a></li>
                        <li><a href="#" title="消息通知"><i class="fa fa-bell"></i></a></li>
                    </ul>

                </div>
            </div>
        </div>
    </header>
    <!--////////////////////////////////////Menu-->
    <a href="#" class="nav-toggle">Toggle Navigation</a>
    <nav class="cmn-tile-nav">
        <ul class="clearfix">
            <li class="colour-1"><a href="<%=bashPath%>/VideoIndexServlet">首页</a></li>
            <li class="colour-2"><a href="<%=bashPath%>/VideoBrowserServlet?area=<%=CONST.AREA_ANIMATION%>">动画</a></li>
            <li class="colour-3"><a href="<%=bashPath%>/VideoBrowserServlet?area=<%=CONST.AREA_MUSIC%>">音乐</a></li>
            <li class="colour-4"><a href="<%=bashPath%>/VideoBrowserServlet?area=<%=CONST.AREA_GAME%>">游戏</a></li>
            <li class="colour-5"><a href="<%=bashPath%>/VideoBrowserServlet?area=<%=CONST.AREA_CARTOON%>">追番</a></li>
            <li class="colour-6"><a href="<%=bashPath%>/VideoBrowserServlet?area=<%=CONST.AREA_MOVE%>">影视</a></li>
            <li class="colour-7"><a href="<%=bashPath%>/VideoBrowserServlet?area=<%=CONST.AREA_FOOD%>">美食</a></li>
            <li class="colour-8"><a href="<%=bashPath%>/VideoBrowserServlet?area=<%=CONST.AREA_ALL%>">ALL</a></li>
        </ul>
    </nav>












<%--中间区域------------------------------------------%>
    <!--////////////////////////////////////Container-->


    <section id="container" class="index-page">
        <div class="wrap-container zerogrid">
            <div class="row">
                <div id="main-content" class="col-2-3">
                    <section class="all">
                        <div class="header">
                            <h2>${area}</h2>
                        </div>
                        <c:forEach items="${browMap}" varStatus="v">
                        <div class="row">
                            <c:forEach items="${browMap[v.index]}" var="video">
                            <div class="col-1-4">
                                <div class="wrap-col">
                                    <div class="wrap-vid">
                                        <div class="zoom-container">
                                            <a href="<%=bashPath%>/ToShowVideoServlet?vid=${video.vid}">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="<%=bashPath%>/${video.psrc}" />
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">${video.title}</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">${video.autor}</a></h5>
                                            <span><i class="fa fa-calendar"></i>${video.createtime}</span>
                                            <span><i class="fa fa-youtube-play"></i>${video.totalplay}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                        </c:forEach>
                    </section>
                    <div class="navigation">
                        <ul>
                            <li><a href="<%=bashPath%>/VideoBrowserServlet?area=${area}"><<</a></li>
                            <c:forEach begin="1" end="${totalpage}" varStatus="v">
                                <li><a href="<%=bashPath%>/VideoBrowserServlet?area=${area}&page=${v.index}">${v.index}</a></li>
                            </c:forEach>
                            <li><a href="<%=bashPath%>/VideoBrowserServlet?area=${area}&page=${totalpage}">>></a></li>
                        </ul>
                    </div>
                </div>


                <div id="sidebar" class="col-1-3">
                    <form id="form-container" action="">
                        <!--<input type="submit" id="searchsubmit" value="" />-->
                        <a class="search-submit-button" onclick="Search()">
                            <i class="fa fa-search"></i>
                        </a>
                        <div id="searchtext">
                            <input type="text" id="s" name="s" placeholder="搜索...">
                        </div>
                    </form>

                    <!---- Start Widget ---->
                    <div class="widget wid-post">
                        <div class="wid-header">
                            <h5>新人榜</h5>
                        </div>
                        <div class="wid-content">
                            <c:forEach items="${newlist}" var="video">
                            <div class="post wrap-vid">
                                <div class="zoom-container">
                                    <a href="<%=bashPath%>/ToShowVideoServlet?vid=${video.vid}">
										<span class="zoom-caption">
											<i class="icon-play fa fa-play"></i>
										</span>
                                        <img src="<%=bashPath%>/${video.psrc}" />
                                    </a>
                                </div>
                                <div class="wrapper">
                                    <h5 class="vid-name"><a href="#">${video.title}</a></h5>
                                    <div class="info">
                                        <h6>By <a href="#">${video.autor}</a></h6>
                                        <span><i class="fa fa-calendar"></i>${video.createtime}</span>
                                        <span><i class="fa fa-youtube-play"></i>${video.totalplay}</span>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                    <!---- Start Widget ---->
                    <div class="widget wid-news">
                        <div class="wid-header">
                            <h5>Top榜</h5>
                        </div>
                        <div class="wid-content">
                            <c:forEach items="${toplist}" var="video">
                            <div class="row">
                                <div class="wrap-vid">
                                    <div class="zoom-container">
                                        <a href="<%=bashPath%>/ToShowVideoServlet?vid=${video.vid}">
											<span class="zoom-caption">
												<i class="icon-play fa fa-play"></i>
											</span>
                                            <img src="<%=bashPath%>/${video.psrc}" />
                                        </a>
                                    </div>
                                    <h3 class="vid-name">${video.title}</h3>
                                    <div class="info">
                                        <h5>By <a href="#">${video.autor}</a></h5>
                                        <span><i class="fa fa-calendar"></i>${video.createtime}</span>
                                        <span><i class="fa fa-youtube-play"></i>${video.totalplay}</span>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </section>









    <%--中间区域------------------------------------------%>
    <!--////////////////////////////////////Footer-->

    <footer>
        <div class="zerogrid top-footer">
            <div class="row">
                <div class="col-1-5">
                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/bottom1.PNG" /></a>
                </div>
                <div class="col-1-5">
                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/bottom2.png" /></a>
                </div>
                <div class="col-1-5">
                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/bottom3.PNG" /></a>
                </div>
                <div class="col-1-5">
                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/bottom4.png" /></a>
                </div>
                <div class="col-1-5">
                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/bottom5.png" /></a>
                </div>
            </div>
        </div>
        <div class="zerogrid wrap-footer">
            <div class="row">
                <div class="col-1-4 col-footer-1">
                    <div class="wrap-col">
                        <a href="index.html" class="logo"><img src="<%=bashPath%>/<%=dirPath%>/images/logo3.png"/></a>
                        <p>「浪子的真情。」——塞西莉亚花的花语。 「我现在会为你歌颂美好的万物万象—— 四季轮转，四风从不止息。 当然啦，功劳也不是它们的，主要是我的。 要是没有吟游诗人，谁去把这些传唱？」
                            <br> &nbsp;&nbsp;&nbsp; ——当温迪彻底沉醉于美酒时，他会如此放声歌唱。
                        </p>
                    </div>
                </div>
                <div class="col-1-4 col-footer-2">
                    <div class="wrap-col">
                        <h3>风之旅团</h3>
                        <ul>
                            <li><a href="#">关于我们</a></li>
                            <li><a href="#">联系我们</a></li>
                            <li><a href="#">加入我们</a></li>
                            <li><a href="#">友情链接</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-1-4 col-footer-3">
                    <div class="wrap-col">
                        <h3>最新情报</h3>
                        <ul>
                            <li><a href="#">最新视频</a></li>
                            <li><a href="#">最流行的视频</a></li>
                            <li><a href="#">最受欢迎的视频</a></li>
                            <li><a href="#">最新情报</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-1-4 col-footer-4">
                    <div class="wrap-col">
                        <h3>我的朋友们</h3>
                        <div class="row">
                            <div class="col-1-4">
                                <div class="wrap-col">
                                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/1.jpg" /></a>
                                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/2.jpg" /></a>
                                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/3.jpg" /></a>
                                </div>
                            </div>
                            <div class="col-1-4">
                                <div class="wrap-col">
                                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/4.jpg" /></a>
                                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/5.jpg" /></a>
                                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/6.jpg" /></a>
                                </div>
                            </div>
                            <div class="col-1-4">
                                <div class="wrap-col">
                                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/7.jpg" /></a>
                                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/8.jpg" /></a>
                                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/9.jpg" /></a>
                                </div>
                            </div>
                            <div class="col-1-4">
                                <div class="wrap-col">
                                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/10.jpg" /></a>
                                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/11.jpg" /></a>
                                    <a href="#"><img src="<%=bashPath%>/<%=dirPath%>/images/12.jpg" /></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </footer>

    <!-- Slider -->
    <script src="<%=bashPath%>/<%=dirPath%>/js/jquery-2.1.1.js"></script>
    <script src="<%=bashPath%>/<%=dirPath%>/js/demo.js"></script>
    <script src="<%=bashPath%>/<%=dirPath%>/js/classie.js"></script>
    <!-- Carousel -->
    <script src="<%=bashPath%>/<%=dirPath%>/js/owl.carousel.js"></script>
    <script>
        $(document).ready(function() {

            $("#owl-demo-1").owlCarousel({
                items : 4,
                lazyLoad : true,
                navigation : true
            });
            $("#owl-demo-2").owlCarousel({
                items : 4,
                lazyLoad : true,
                navigation : true
            });
            $("#owl-demo-3").owlCarousel({
                items : 4,
                lazyLoad : true,
                navigation : true
            });
        });
    </script>
</div>
</body></html>