<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/9
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" href="css/auth.css">
</head>

<body>
<div  style="background-image: url(images/bk.jpg); width: 100%; height:858px; padding: 30px 0 28px 0 ;" >
<div class="lowin">
    <div class="lowin-brand">
        <img src="images/kodinger.jpg" alt="logo">
    </div>
    <div class="lowin-wrapper">
        <div class="lowin-box lowin-login">
            <div class="lowin-box-inner">
                <form>
                    <p>欢迎光临⁄(⁄ ⁄•⁄ω⁄•⁄ ⁄)⁄</p>
                    <div class="lowin-group">
                        <label>用户名 <a href="#" class="login-back-link">登陆?</a></label>
                        <input type="email" autocomplete="email" name="email" class="lowin-input">
                    </div>
                    <div class="lowin-group password-group">
                        <label>密码 <a href="#" class="forgot-link">忘了密码?</a></label>
                        <input type="password" name="password" autocomplete="current-password" class="lowin-input">
                    </div>
                    <button class="lowin-btn login-btn">
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
                        <input type="text" name="name" autocomplete="name" class="lowin-input">
                    </div>
                    <div class="lowin-group">
                        <label>密码</label>
                        <input type="password" name="password" autocomplete="current-password" class="lowin-input">
                    </div>
                    <div class="lowin-group">
                        <label>邮箱</label>
                        <input type="email" autocomplete="email" name="email" class="lowin-input">
                    </div>

                    <button class="lowin-btn">
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
<script src="js/auth.js"></script>
<script>
    Auth.init({
        login_url: '#login',
        forgot_url: '#forgot'
    });
</script>
</body>
</html>