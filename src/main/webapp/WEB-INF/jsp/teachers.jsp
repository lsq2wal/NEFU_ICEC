<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
        flex-wrap:wrap;
    }
    div.card{
        width:150px;
        height:300px;
        box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
        text-align:center;
    }
    div.card>.thumb{
        width: 150px;
        height: 250px;
    }
    div.container2{
        padding:10px;
    }
</style>
<body>
<div class="container">
    <div id="header">
        <%@include file="/WEB-INF/jsp/header.jsp" %>
    </div>
    <div id="main">
        <c:forEach items="${teachers}" var="t">
            <div class="card" name="card">
                <img class="thumb" src="${t.picture}"/>
                <div class="container2">
                    <a href="getteacher?tid=${t.id}" class="btn btn-primary" role="button">${t.name}</a>
                </div>
            </div>
        </c:forEach>
    </div>
    <div>
        <%@include file="/WEB-INF/jsp/footer.jsp" %>
    </div>
</div>
<script>
    document.getElementById("card").onclick=function (){
        window.location = "getteacher?tid=${t.id}";
    }
</script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>