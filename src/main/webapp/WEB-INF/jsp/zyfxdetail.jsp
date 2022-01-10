<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>专业介绍</title>
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
        <h2>专业方向简介</h2><br>
        <HR align=center width=300 color=#987cb9 SIZE=1>
        <h4>Web开发</h4><br>
        <p>Web开发包括前端开发和后端开发两个大的岗位划分，前端开发主要以应用Html、CSS和JavaScript为主，而后端开发则可以使用Java、Python、PHP、C#等语言。早期大部分毕业生会选择以后端开发为主。</p>
        <br>
        <h4>移动终端开发</h4><br>
        <p>随着移动互联网的发展，目前有不少毕业生会专注于移动端App的开发，主要包括iOS终端开发和Android终端开发。随着5G标准的落地应用，未来移动终端的开发场景也会进一步得到拓展，比如与物联网的深度结合等。</p>
        <br>
        <h4>大数据开发</h4><br>
        <p>
            大数据技术已经发展多年，技术体系已经趋于成熟，当前正处在落地应用的初期，随着产业互联网的发展，未来大数据领域将释放出大量的就业岗位。从近些年的就业情况来看，从事大数据相关岗位的毕业生还是比较多的，以大数据应用开发、大数据分析和大数据运维几个岗位为主。
        </p><br>

    </div>
    <div>
        <%@include file="/WEB-INF/jsp/footer.jsp" %>
    </div>
</div>

</body>
</html>



