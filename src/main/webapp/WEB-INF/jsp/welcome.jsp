<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="//unpkg.com/layui@2.6.8/dist/css/layui.css">
    <title>教师</title>
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
    .main{
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 50px;
    }
    html {
        height: 100%;
    }
    body{
        background-image: url("https://icec.nefu.edu.cn/images/ba.png");
        background-position: center;
        background-size: cover;
    }
    .form1{
        background-color: white;
        width: 1000px;

    }
    .form{
        background-color: white;
        width: 1000px;
        margin-top: 10px;

    }
    .sumi{
        margin-bottom: 10px;
    }
    input{
        width: 500px;
    }
</style>
<body>
<div class="container">
    <div id="header">
        <%@include file="/WEB-INF/jsp/header.jsp" %>
    </div>
    <div class="main">
        <div class="form1">
        <h2>添加新闻</h2><br>
        <form class="layui-form" action="update" method="post">
            <div class="layui-form-item">
                <label class="layui-form-label">新闻id</label>
                <div class="layui-input-block">
                    <input type="text" name="id" required  lay-verify="required" placeholder="请输入新闻id" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">标题</label>
                <div class="layui-input-block">
                    <input type="text" name="topic" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">文本域</label>
                <div class="layui-input-block">
                    <textarea name="content" placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item sumi">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form><br>
        </div>
        <div class="form">
        <h2>删除新闻</h2><br>
        <form class="layui-form" action="delete" method="post">
            <div class="layui-form-item">
                <label class="layui-form-label">新闻id</label>
                <div class="layui-input-block">
                    <input type="text" name="id" required  lay-verify="required" placeholder="请输入新闻id" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
        </div>
        <div class="form">
            <h2>查找新闻</h2><br>
            <form class="layui-form" action="getnews" method="get">
                <div class="layui-form-item">
                    <label class="layui-form-label">新闻id</label>
                    <div class="layui-input-block">
                        <input type="text" name="nid" required  lay-verify="required" placeholder="请输入新闻id" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div>
        <%@include file="/WEB-INF/jsp/footer.jsp" %>
    </div>
</div>
<script src="//unpkg.com/layui@2.6.8/dist/layui.js">
</body>
</html>