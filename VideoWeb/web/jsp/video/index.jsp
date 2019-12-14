<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/9
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
    <link rel="stylesheet" href="css/zerogrid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/menu.css">
    <!-- Owl Carousel Assets -->
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0"
                 height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="js/html5.js"></script>
    <script src="js/css3-mediaqueries.js"></script>
    <![endif]-->

</head>
<body id="wrapper">
<div class="wrap-body">

    <!--////////////////////////////////////Header-->
    <header>
        <div class="wrap-header" >
            <div class="zerogrid" >
                <div class="row" >
                    <a href="index.html" class="logo"><img src="images/logo3.png" width="180"></a>
                    <ul class="social">
                        <li><a href="#" title="发布视频"><i class="fa fa-upload"></i></a></li>
                        <li><a href="#" title="个人信息"><i class="fa fa-user"></i></a></li>
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
            <li class="colour-1"><a href="index.jsp">首页</a></li>
            <li class="colour-2"><a href="browser.jsp?">动画</a></li>
            <li class="colour-3"><a href="browser.jsp?">音乐</a></li>
            <li class="colour-4"><a href="browser.jsp?">游戏</a></li>
            <li class="colour-5"><a href="browser.jsp?">追番</a></li>
            <li class="colour-6"><a href="browser.jsp?">影视</a></li>
            <li class="colour-7"><a href="browser.jsp?">美食</a></li>
            <li class="colour-8"><a href="browser.jsp?">More</a></li>
        </ul>
    </nav>


    <%--中间区域------------------------------------------%>
    <section id="container" class="index-page">
        <div class="wrap-container zerogrid">
            <!------------------------------------->
            <div class="row">
                <div class="header">

                    <h2>播放量最高</h2>
                </div>
                <div class="row">
                    <div class="most-viewed">
                        <div class="col-2-4">
                            <div class="wrap-col">
                                <div class="zoom-container">
                                    <a href="#">
									<span class="zoom-caption">
										<i class="icon-play fa fa-play"></i>
									</span>
                                        <img src="images/14.jpg"/>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="extra">
                        <div class="col-1-4">
                            <div class="wrap-col">
                                <div class="zoom-container">
                                    <a href="single.html">
									<span class="zoom-caption">
										<i class="icon-play fa fa-play"></i>
									</span>
                                        <img src="images/1.jpg"/>
                                    </a>
                                </div>
                                <div class="zoom-container">
                                    <a href="single.html">
									<span class="zoom-caption">
										<i class="icon-play fa fa-play"></i>
									</span>
                                        <img src="images/2.jpg"/>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-1-4">
                            <div class="wrap-col">
                                <div class="zoom-container">
                                    <a href="single.html">
									<span class="zoom-caption">
										<i class="icon-play fa fa-play"></i>
									</span>
                                        <img src="images/5.jpg"/>
                                    </a>
                                </div>
                                <div class="zoom-container">
                                    <a href="single.html">
									<span class="zoom-caption">
										<i class="icon-play fa fa-play"></i>
									</span>
                                        <img src="images/14.jpg"/>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div id="main-content" class="col-2-3">
                    <div class="wrap-content">
                        <section class="vid-tv">
                            <div class="header">
                                <h2>动画</h2>
                            </div>
                            <div class="row">
                                <div id="owl-demo-1" class="owl-carousel">
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/1.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/2.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/3.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/4.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/5.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/14.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/3.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/5.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <section class="vid-sport">
                            <div class="header">
                                <h2>音乐</h2>
                            </div>
                            <div class="row"><!--Start Box-->
                                <div id="owl-demo-2" class="owl-carousel">
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/1.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/2.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/3.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/4.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/5.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/14.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/3.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/5.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <section class="vid-music">
                            <div class="header">
                                <h2>游戏</h2>
                            </div>
                            <div class="row"><!--Start Box-->
                                <div id="owl-demo-3" class="owl-carousel">
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/1.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/2.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/3.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/4.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/5.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/14.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/3.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <div class="item wrap-vid">
                                        <div class="zoom-container">
                                            <a href="single.html">
												<span class="zoom-caption">
													<i class="icon-play fa fa-play"></i>
												</span>
                                                <img src="images/5.jpg"/>
                                            </a>
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>




                    </div>
                </div>
                <div id="sidebar" class="col-1-3">
                    <form id="form-container" action="">
                        <!--<input type="submit" id="searchsubmit" value="" />-->
                        <a class="search-submit-button" href="javascript:void(0)">
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
                            <div class="post wrap-vid">
                                <div class="zoom-container">
                                    <a href="single.html">
										<span class="zoom-caption">
											<i class="icon-play fa fa-play"></i>
										</span>
                                        <img src="images/4.jpg"/>
                                    </a>
                                </div>
                                <div class="wrapper">
                                    <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                    <div class="info">
                                        <h6>By <a href="#">Kelvin</a></h6>
                                        <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                        <span><i class="fa fa-heart"></i>1,200</span>
                                    </div>
                                </div>
                            </div>
                            <div class="post wrap-vid">
                                <div class="zoom-container">
                                    <a href="single.html">
										<span class="zoom-caption">
											<i class="icon-play fa fa-play"></i>
										</span>
                                        <img src="images/14.jpg"/>
                                    </a>
                                </div>
                                <div class="wrapper">
                                    <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                    <div class="info">
                                        <h6>By <a href="#">Kelvin</a></h6>
                                        <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                        <span><i class="fa fa-heart"></i>1,200</span>
                                    </div>
                                </div>
                            </div>
                            <div class="post wrap-vid">
                                <div class="zoom-container">
                                    <a href="single.html">
										<span class="zoom-caption">
											<i class="icon-play fa fa-play"></i>
										</span>
                                        <img src="images/3.jpg"/>
                                    </a>
                                </div>
                                <div class="wrapper">
                                    <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                    <div class="info">
                                        <h6>By <a href="#">Kelvin</a></h6>
                                        <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                        <span><i class="fa fa-heart"></i>1,200</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!---- Start Widget ---->
                    <div class="widget wid-news">
                        <div class="wid-header">
                            <h5>Top榜</h5>
                        </div>
                        <div class="wid-content">
                            <div class="row">
                                <div class="wrap-vid">
                                    <div class="zoom-container">
                                        <a href="single.html">
											<span class="zoom-caption">
												<i class="icon-play fa fa-play"></i>
											</span>
                                            <img src="images/1.jpg"/>
                                        </a>
                                    </div>
                                    <h3 class="vid-name">Video's Name</h3>
                                    <div class="info">
                                        <h5>By <a href="#">Kelvin</a></h5>
                                        <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                        <span><i class="fa fa-heart"></i>1,200</span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="wrap-vid">
                                    <div class="zoom-container">
                                        <a href="single.html">
											<span class="zoom-caption">
												<i class="icon-play fa fa-play"></i>
											</span>
                                            <img src="images/2.jpg"/>
                                        </a>
                                    </div>
                                    <h3 class="vid-name">Video's Name</h3>
                                    <div class="info">
                                        <h5>By <a href="#">Kelvin</a></h5>
                                        <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                        <span><i class="fa fa-heart"></i>1,200</span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="wrap-vid">
                                    <div class="zoom-container">
                                        <a href="single.html">
											<span class="zoom-caption">
												<i class="icon-play fa fa-play"></i>
											</span>
                                            <img src="images/4.jpg"/>
                                        </a>
                                    </div>
                                    <h3 class="vid-name">Video's Name</h3>
                                    <div class="info">
                                        <h5>By <a href="#">Kelvin</a></h5>
                                        <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                        <span><i class="fa fa-heart"></i>1,200</span>
                                    </div>
                                </div>
                            </div>
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
                    <a href="#"><img src="images/bottom1.PNG"/></a>
                </div>
                <div class="col-1-5">
                    <a href="#"><img src="images/bottom2.png"/></a>
                </div>
                <div class="col-1-5">
                    <a href="#"><img src="images/bottom3.PNG"/></a>
                </div>
                <div class="col-1-5">
                    <a href="#"><img src="images/bottom4.png"/></a>
                </div>
                <div class="col-1-5">
                    <a href="#"><img src="images/bottom5.png"/></a>
                </div>
            </div>
        </div>
        <div class="zerogrid wrap-footer">
            <div class="row">
                <div class="col-1-4 col-footer-1">
                    <div class="wrap-col">
                        <a href="index.html" class="logo"><img src="images/logo3.png"/></a>
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
                                    <a href="#"><img src="images/1.jpg"/></a>
                                    <a href="#"><img src="images/2.jpg"/></a>
                                    <a href="#"><img src="images/3.jpg"/></a>
                                </div>
                            </div>
                            <div class="col-1-4">
                                <div class="wrap-col">
                                    <a href="#"><img src="images/4.jpg"/></a>
                                    <a href="#"><img src="images/5.jpg"/></a>
                                    <a href="#"><img src="images/6.jpg"/></a>
                                </div>
                            </div>
                            <div class="col-1-4">
                                <div class="wrap-col">
                                    <a href="#"><img src="images/7.jpg"/></a>
                                    <a href="#"><img src="images/8.jpg"/></a>
                                    <a href="#"><img src="images/9.jpg"/></a>
                                </div>
                            </div>
                            <div class="col-1-4">
                                <div class="wrap-col">
                                    <a href="#"><img src="images/10.jpg"/></a>
                                    <a href="#"><img src="images/11.jpg"/></a>
                                    <a href="#"><img src="images/12.jpg"/></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </footer>

    <!-- Slider -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/demo.js"></script>
    <script src="js/classie.js"></script>
    <!-- Carousel -->
    <script src="js/owl.carousel.js"></script>
    <script>
        $(document).ready(function () {

            $("#owl-demo-1").owlCarousel({
                items: 4,
                lazyLoad: true,
                navigation: true
            });
            $("#owl-demo-2").owlCarousel({
                items: 4,
                lazyLoad: true,
                navigation: true
            });
            $("#owl-demo-3").owlCarousel({
                items: 4,
                lazyLoad: true,
                navigation: true
            });
        });
    </script>
</div>
</body>
</html>