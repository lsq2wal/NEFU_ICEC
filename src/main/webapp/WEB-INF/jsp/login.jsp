<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>登录</title>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    .container {
        display: flex;
        flex-direction: column;
        min-height: 100vh;
        max-width: 100%;
    }
    html {
        height: 100%;
    }
     body{
         background-image: url("https://icec.nefu.edu.cn/images/ba.png");
         background-position: center;
         background-size: cover;
     }

    .main {
        margin: 0 auto;
        padding-left: 25px;
        padding-right: 25px;
        padding-top: 15px;
        width: 400px;
        height: 350px;
        background: #FFFFFF;
        /*以下css用于让登录表单垂直居中在界面,可删除*/
        position: absolute;
        top: 50%;
        left: 50%;
        margin-top: -175px;
        margin-left: -175px;
    }

    .title {
        width: 100%;
        height: 40px;
        line-height: 40px;
    }

    .title span {
        font-size: 18px;
        color: #353f42;
    }

    .title-msg {
        width: 100%;
        height: 64px;
        line-height: 64px;
    }

    .title:hover{
        cursor: default	;
    }

    .title-msg:hover{
        cursor: default	;
    }

    .title-msg span {
        font-size: 12px;
        color: #707472;
    }

    .input-content {
        width: 100%;
        height: 120px;
    }

    .input-content input {
        width: 330px;
        height: 40px;
        border: 1px solid #dad9d6;
        background: #ffffff;
        padding-left: 10px;
        padding-right: 10px;
    }

    .enter-btn {
        width: 350px;
        height: 40px;
        color: #fff;
        background: #0bc5de;
        line-height: 40px;
        text-align: center;
        border: 0px;
    }

    .foot{
        width: 100%;
        height: auto;
        color: #9b9c98;
        font-size: 12px;
        margin-top: 20px;
    }

    .enter-btn:hover {
        cursor:pointer;
        background: #1db5c9;
    }

    .foot div:hover {
        cursor:pointer;
        color: #484847;
        font-weight: 600;
    }

    .left{
        float: left;
    }
    .right{
        float: right;
    }

</style>
<body>
<div class="container">
    <div id="header">
        <%@include file="/WEB-INF/jsp/header.jsp" %>
    </div>
    <div class="main">
        <div class="title">
            <span>密码登录</span>
        </div>

        <div class="title-msg">
            <span>请输入登录账户和密码</span>
        </div>

        <form class="login-form" method="post" action="login" >
            <!--输入框-->
            <div class="input-content">
                <!--autoFocus-->
                <div>
                    <input type="text" autocomplete="off"
                           placeholder="用户名" name="username" required/>
                </div>

                <div style="margin-top: 16px">
                    <input type="password"
                           autocomplete="off" placeholder="登录密码" name="pwd" required maxlength="32"/>
                </div>
            </div>

            <!--登入按钮-->
            <div style="text-align: center">
                <button type="submit" class="enter-btn" >登录</button>
            </div>

            <div class="foot">
                <div class="left"><span>账号密码</span></div>

                <div class="right"><span>admin</span></div>
            </div>
        </form>

    </div>

    <div>
        <%@include file="/WEB-INF/jsp/footer.jsp" %>
    </div>
</div>

</body>
</html>

