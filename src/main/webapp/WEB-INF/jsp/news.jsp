<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>新闻</title>
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
        <div>
            <h2>${news.topic}</h2>
        </div><br>
        <h6>${news.insertTime}</h6>
        <div>
            <p>${news.content}</p>
        </div>
    </div>
        <div>
            <%@include file="/WEB-INF/jsp/footer.jsp" %>
        </div>
    </div>
</div>
</body>

</html>