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
        width: 100%;
    }
    .main{
        display: flex;
        flex-direction: column;
        align-items: center;
        z-index: 0;
    }
    #max{
        width: 100%;
        height: auto;
        align-items: center;

    }
    .re{
        position: relative;
        width: 100%;
    }
    .re ul{
        list-style-type:none ;
    }
    .re ul>li{
        width: 100%;
        position: absolute;
        transition: 2s;
        opacity:0;
    }
    .re ul>li img{
        width: 100%;
        height: auto;
    }
    #max ol {
        position: relative;
        display: grid;
        grid-template-columns: repeat(3,75px);
        grid-template-rows: auto;
        grid-gap: 1em;gap: 1em;
        float: right;
        margin-top: 310px;
        margin-right: 100px;
        list-style: none;
        top:0;left:0px;
    }
    #max ol li {
        width: 35px;
        height: 20px;
        font-size: 25px;
        line-height: 20px;
        float: left;
        text-align: center;
        border-radius: 2em;
        border: 5px solid #999999;
    }
    .news{
        width: 100%;
        height: auto;
        margin-top: 50px;

    }
    a{
        font-size: 1.5em;
    }
    .right{
        float:right;
    }

</style>
<body>
<div class="container">
    <div id="header">
        <%@include file="/WEB-INF/jsp/header.jsp" %>
    </div>
    <div class="main">
        <div id="max">
            <div class="re">
                <ul>
                    <li><img src="resources/image/bannern.jpg" alt=""></li>
                    <li><a herf="https://icec.nefu.edu.cn/info/1085/2134.htm"><img src="resources/image/ba.png" alt=""></a></li>
                    <li><img src="https://icec.nefu.edu.cn/images/jiuyeneirongbanner23.png" alt=""></li>
                </ul>
                <ol>
                    <li></li>
                    <li></li>
                    <li></li>
                </ol>
            </div>
        </div>
        <div class="news">
            <div style="margin:50px 0 0 20px">
                <h2>新闻公告</h2>
                <ul>
                    <c:forEach items="${news}" var="n">
                        <li><a href="getnews?nid=${n.id}">${n.topic}</a><span class="right">${n.insertTime}</span></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <div>
        <%@include file="/WEB-INF/jsp/footer.jsp" %>
    </div>
</div>
<script>
    window.onload = function(){
        var box=this.document.getElementsByClassName("re")[0];
        var lik=box.getElementsByTagName("li");
        function fun(i,j){
            lik[i].style.opacity=1;
            lik[j].style.opacity=0;
            lik[i+3].style.backgroundColor="#ffffff";
            lik[j+3].style.backgroundColor="#00000000"
        }
        fun(0,1);//初始化下
        var i =0;
        function auto(){//轮播循环函数
            if(++i>=3){
                i=0;
                fun(0,2);
            }
            else fun(i,i-1);
        }
        timer=this.setInterval(auto,2000);
        box.onmouseover = function () {
            console.log('good');
            clearInterval(timer);
        }
        box.onmouseout = function () {
            timer = setInterval(auto, 2000);
        }
        var j =0;
        for(;j<3;j++){
            lik[j+3].ind=j;
            lik[j+3].onclick=function(){
                fun(this.ind,i)
                i=this.ind;
            }
        }
    }
</script>
</body>
</html>



