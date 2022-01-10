<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>移动开发实验室</title>
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
    #main{
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    p{
        text-indent: 2em;
        font-size: 1.5em;
    }
</style>
<body>
<div class="container">
    <div id="header">
        <%@include file="/WEB-INF/jsp/header.jsp" %>
    </div>
    <div id="main">
        <h2>移动开发实验室</h2><br>
        <HR align=center width=300 color=#987cb9 SIZE=1>
        <img src="http://img.mp.sohu.com/upload/20170725/785326231e6a446ab028c341c62f0064_th.png"><br>
        <p>该实验室2021年12月建成，面积共计112平方米。现有HP计算机49台、交互式投影一套，多媒体教学系统一套。 主要承担《JAVA程序开发》课程、《Android手机程序开发》及软件工程方向“3+1”实训和毕业设计等， 现面向信息与软件工程相关专业开放。 1. 使学生掌握网页设计与制作的技术，能够利用HTML5、CSS3等技术进行网页布局，基于项目化教学的模式培养学生实践动手能力。 2. 使学生了解JavaScript的基本语法，具备JavaScript的编程技巧和编程步骤。 3. 使学生掌握了Android框架、Android组件、用户界面开发、用户界面布局、四大基本组件、XML解析方式及区别、数据存储等基础知识，具备了Android应用开发的能力。 4. 使学生掌握了Android网络应用中的HTTP数据通信、URL处理数据、处理XML数据、下载远程数据、上传数据、使用WebView浏览网页数据等知识，具备了Android网络开发的能力。</p>
    </div>
    <div>
        <%@include file="/WEB-INF/jsp/footer.jsp" %>
    </div>
</div>

</body>
</html>

