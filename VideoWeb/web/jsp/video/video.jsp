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
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
    </div>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="js/html5.js"></script>
    <script src="js/css3-mediaqueries.js"></script>

    <![endif]-->

    <meta http-equiv=”X-UA-Compatible” content=”IE=edge,chrome=1″ />
    <link rel="stylesheet" href="css/Dvideo.css">
    <link rel="stylesheet" href="font-icon/style.css">
    <style>

        #testVideo{
            width: 800px;
            height: 400px;
            margin: 0 auto;
            outline:2px solid #ccc;
        }

    </style>

</head>
<body id="wrapper" >
<div class="wrap-body">

    <!--////////////////////////////////////Header-->
    <header>
        <div class="wrap-header"  >
            <div class="zerogrid">
                <div class="row">
                    <a href="index.html" class="logo"><img src="images/logo3.png" width="200" ></a>
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
            <div class="row">
                <div id="main-content" class="col-2-3">
                    <div class="wrap-vid" style="width: 800px; height:600px;">
                     <%--视频播放区--%>
                         <div id="testVideo" ></div>
                    </div>


                    <div class="row">
                        <div class="share">
                            <div class="col-1-4">
                                <div class="wrap-col">
                                    <div class="box-share">
                                        <a href="#">
                                            <i class="fa fa-heart"></i>
                                            <span>收藏</span>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-1-4">
                                <div class="wrap-col">
                                    <div class="box-share">
                                        <a href="#">
                                            <i class="fa fa-thumbs-o-up"></i>
                                            <span>110</span>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <h1 class="vid-name">Video's Name</h1>
                    <div class="info">
                        <h5>By <a href="#">Kelvin</a></h5>
                        <span><i class="fa fa-calendar"></i>25/3/2015</span>
                        <span><i class="fa fa-heart"></i>1,200</span>
                    </div>
                    <p>Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec ac euismod turpis.</p>
                    <div class="tags" >

                    </div>
                    <section class="vid-related">
                        <div class="header">
                            <h2>相关推荐</h2>
                        </div>
                        <div class="row"><!--Start Box-->
                            <div id="owl-demo-1" class="owl-carousel">
                                <div class="item wrap-vid">
                                    <div class="zoom-container">
                                        <a href="single.html">
											<span class="zoom-caption">
												<i class="icon-play fa fa-play"></i>
											</span>
                                            <img src="images/1.jpg" />
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
                                            <img src="images/2.jpg" />
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
                                            <img src="images/3.jpg" />
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
                                            <img src="images/4.jpg" />
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
                                            <img src="images/5.jpg" />
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
                                            <img src="images/14.jpg" />
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
                                            <img src="images/3.jpg" />
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
                                            <img src="images/5.jpg" />
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
                <div id="sidebar" class="col-1-3">
                    <form id="form-container" action="">
                        <!--<input type="submit" id="searchsubmit" value="" />-->
                        <a class="search-submit-button" href="javascript:void(0)">
                            <i class="fa fa-search"></i>
                        </a>
                        <div id="searchtext">
                            <input type="text" id="s" name="s" placeholder="搜索.....">
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
                                        <img src="images/4.jpg" />
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
                                        <img src="images/14.jpg" />
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
                                        <img src="images/3.jpg" />
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
                                            <img src="images/1.jpg" />
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
                                            <img src="images/2.jpg" />
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
                                            <img src="images/4.jpg" />
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
                    <a href="#"><img src="images/bottom1.PNG" /></a>
                </div>
                <div class="col-1-5">
                    <a href="#"><img src="images/bottom2.png" /></a>
                </div>
                <div class="col-1-5">
                    <a href="#"><img src="images/bottom3.PNG" /></a>
                </div>
                <div class="col-1-5">
                    <a href="#"><img src="images/bottom4.png" /></a>
                </div>
                <div class="col-1-5">
                    <a href="#"><img src="images/bottom5.png" /></a>
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
                                    <a href="#"><img src="image2/1.jpg" /></a>
                                    <a href="#"><img src="image2/2.jpg" /></a>
                                    <a href="#"><img src="image2/3.jpg" /></a>
                                </div>
                            </div>
                            <div class="col-1-4">
                                <div class="wrap-col">
                                    <a href="#"><img src="image2/4.jpg" /></a>
                                    <a href="#"><img src="image2/5.jpg" /></a>
                                    <a href="#"><img src="image2/6.jpg" /></a>
                                </div>
                            </div>
                            <div class="col-1-4">
                                <div class="wrap-col">
                                    <a href="#"><img src="image2/7.jpg" /></a>
                                    <a href="#"><img src="image2/8.jpg" /></a>
                                    <a href="#"><img src="image2/9.jpg" /></a>
                                </div>
                            </div>
                            <div class="col-1-4">
                                <div class="wrap-col">
                                    <a href="#"><img src="image2/10.jpg" /></a>
                                    <a href="#"><img src="image2/11.jpg" /></a>
                                    <a href="#"><img src="image2/12.jpg" /></a>
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


<script src="js/Dvideo.js"></script>
<script>
    // window.onload = function () {
    var videoWrap = document.getElementById('testVideo')
    var fullScreen = document.getElementById('getFullScreen')
    var video = new Dvideo ({
        ele: '#testVideo',
        title: 'Pneumatic Tokyo - EnV',
        nextVideoExtend: function () {

        },
        showNext: true,
        width: '800px',
        height: '600px',
        src: '01.mp4',
        autoplay: true,
        setVideoDefinition: function (type, e, current) {
            if (type === '0') {

                 video.setVideoInfo('標清360','01.mp4',current)
            }
            if (type === '1') {

                // video.setVideoInfo('高清720','这里填写视频的高清地址',current)
            }
            if (type === '2') {

                // video.setVideoInfo('超清1080','这里填写视频的超清地址',current)
            }
            video.showLoading(false)


        },
    })

    // 全屏
    function setFullScreen () {
        video.launchFullScreen(videoWrap)
    }

    // 播放
    function play () {
        video.videoPlay()
    }

    // 暂停
    function pause () {
        video.videoPause()
    }

    // 播放暂停
    function playpause () {
        video.videoPlayPause()
    }

    function setVolume (v) {
        video.updateVolume(v)
    }

    function setBackRate (index) {
        video.setPlayBackRate(index)
    }

    function setVideoForward () {
        video.videoForward(10)
    }

    function setVideoRewind () {
        video.videoRewind(10)
    }

    function showLoading () {
        video.showLoading(true, '视频清晰度切换中，请稍等')
    }

    function showTopBottomCtrlNotClose () {
        video.showTopBottomCtrl()
    }

    function hideTopBottomCtrlLi () {
        video.hideTopBottomCtrl(true)
    }

    function showTopBottomCtrl () {
        video.showTopBottomCtrl(true)
    }

    function hideTopBottomCtrl () {
        video.hideTopBottomCtrl()
    }

    function setVideoSize () {
        video.updateVideoSize(720,480)
    }
</script>

</body></html>