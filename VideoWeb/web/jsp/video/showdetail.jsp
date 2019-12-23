<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/12
  Time: 0:14
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //取得项目路径
    String bashPath=request.getContextPath();
    String dirPath="jsp/video";
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="<%=bashPath%>/<%=dirPath%>/assets/css/layui.css">
    <link rel="stylesheet" href="<%=bashPath%>/<%=dirPath%>/assets/css/view.css"/>
    <%--视频播放--%>
    <link rel="stylesheet" href="<%=bashPath%>/<%=dirPath%>/css/Dvideo.css">
    <link rel="stylesheet" href="<%=bashPath%>/<%=dirPath%>/font-icon/style.css">
    <title></title>
</head>
<body class="layui-view-body">
<div class="layui-content">
    <div class="layui-page-header">

        <div class="wrap-container zerogrid">
            <div class="row">
                <div id="main-content" class="col-2-3">
                    <div class="wrap-vid" style="width: 800px; height:600px;">
                        <%--视频播放区--%>
                        <div id="testVideo" ></div>
                        </div>
                    </section>
                </div>
        </div>



    </div>
</div>
</div>
<script src="<%=bashPath%>/<%=dirPath%>/assets/layui.all.js"></script>


<script src="<%=bashPath%>/<%=dirPath%>/js/Dvideo.js"></script>
<script>
    // window.onload = function () {
    var videoWrap = document.getElementById('testVideo')
    var fullScreen = document.getElementById('getFullScreen')
    var video = new Dvideo ({
        ele: '#testVideo',
        title: '${Title}',
        nextVideoExtend: function () {

        },
        showNext: true,
        width: '800px',
        height: '600px',
        src: '<%=bashPath%>/${vdosrc}',
        autoplay: false,
        setVideoDefinition: function (type, e, current) {
            if (type === '0') {

                video.setVideoInfo('標清360','<%=bashPath%>/${vdosrc}',current)
            }
            if (type === '1') {

                 video.setVideoInfo('高清720','<%=bashPath%>/${vdosrc}',current)
            }
            if (type === '2') {
                 video.setVideoInfo('超清1080','<%=bashPath%>/${vdosrc}',current)
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

</body>
</html>