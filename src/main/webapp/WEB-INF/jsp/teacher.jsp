<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
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
    #main{
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .timage{
        width: 192px;
        height:256px;
    }
</style>
<body>
<div class="container">
    <div id="header">
        <%@include file="/WEB-INF/jsp/header.jsp" %>
    </div>
    <div id="main">
        <h2>${teacher.name}</h2><br>
        <img src="${teacher.picture}" class="timage"><br>
        <p>${teacher.details}</p>
    </div>
    <div>
        <%@include file="/WEB-INF/jsp/footer.jsp" %>
    </div>
</div>

</body>
</html>

