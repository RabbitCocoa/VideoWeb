<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/9
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //取得项目名
    String bashPath=request.getContextPath()+"/";
%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" href="<%=bashPath%>jsp/video/css/auth.css">


    <script type="text/javascript" src="<%=bashPath%>js/jquery-3.4.1.js"></script>

    <script type="text/javascript">

        /*注册事件ajax,成功提示*/
        function register()
        {
            var $name=$("#Name").val();
            var $pwd=$("#Pwd").val();
            var $email=$("#Email").val();

            $.post(
            "<%=bashPath%>RegisterServlet",
            "Name="+$name+"&Pwd="+$pwd+"&Email="+$email,
            function (result) {
                 alert(result);

                if(result == 'success'){
                    alert("注册成功");
                    window.location.href="<%=bashPath%>login.jsp"
                }
                else if(result=='same')
                {
                    alert("用户名已存在");
                }

                else{
                    alert("注册失败,请重试");
                }
            },
                "text")
        }

        function login()
        {
            var $name=$("#Uname").val();
            var $pwd=$("#Upwd").val();


            $.post(
                "<%=bashPath%>LoginServlet",
                "Name="+$name+"&Pwd="+$pwd,
                function (result) {
                    if(result=="admin"){
                        window.location.href="<%=bashPath%>ManagerInfoServlet"
                    }
                    else if(result=="user")
                    {
                        window.location.href="<%=bashPath%>UserInfoServlet"
                    }
                    else if(result=='ban')
                    {
                        alert("该账号已被冻结");
                        window.location.href="<%=bashPath%>login.jsp"
                    }
                    else{
                        alert("用户名或密码错误");
                        window.location.href="<%=bashPath%>login.jsp"
                    }
                },
                "text")
        }

    </script>
</head>



<body>
<div  style="background-image: url(<%=bashPath%>jsp/video/images/bk.jpg); width: 100%; height:858px; padding: 30px 0 28px 0 ;" >
<div class="lowin">
    <div class="lowin-brand">
        <img src="jsp/video/images/kodinger.jpg" alt="logo">
    </div>
    <div class="lowin-wrapper">
        <div class="lowin-box lowin-login">
            <div class="lowin-box-inner">
                <form >
                    <p>欢迎光临⁄(⁄ ⁄•⁄ω⁄•⁄ ⁄)⁄</p>
                    <div class="lowin-group">
                        <label>用户名 <a href="#" class="login-back-link">登陆?</a></label>
                        <input type="text" id="Uname" name="Name" class="lowin-input">
                    </div>
                    <div class="lowin-group password-group">
                        <label>密码 <a href="#" class="forgot-link">忘了密码?</a></label>
                        <input type="password" name="Pwd" id="Upwd" class="lowin-input">
                    </div>
                    <button class="lowin-btn"  type="button" onclick="login()">
                      登陆
                    </button>

                    <div class="text-foot">
                       还没有注册? <a href="" class="register-link">点这里！</a>
                    </div>
                </form>
            </div>
        </div>

        <div class="lowin-box lowin-register">
            <div class="lowin-box-inner">
                <form>
                    <p>注册您的信息</p>
                    <div class="lowin-group">
                        <label>用户名</label>
                        <input type="text" id="Name" autocomplete="name" class="lowin-input">
                    </div>
                    <div class="lowin-group">
                        <label>密码</label>
                        <input type="password" id="Pwd" autocomplete="current-password" class="lowin-input">
                    </div>
                    <div class="lowin-group">
                        <label>邮箱</label>
                        <input type="email" autocomplete="Email" id="Email" class="lowin-input">
                    </div>

                    <button class="lowin-btn"  type="button" onclick="register()">
                        注册
                    </button>

                    <div class="text-foot">
                        已拥有用户？ <a href="" class="login-link">返回登陆</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <footer class="lowin-footer">
        “听凭风引。”
    </footer>
</div>
</div>
<script src="<%=bashPath%>jsp/video/js/auth.js"></script>
<script>
    Auth.init({
        login_url: '#login',
        forgot_url: '#forgot'
    });
</script>
</body>
</html>