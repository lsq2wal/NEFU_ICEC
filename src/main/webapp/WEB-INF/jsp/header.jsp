<%@ page pageEncoding="UTF-8" %>
<style>
    header {
        margin: 0px;

    }
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    header nav .right {
        margin-left: auto;
    }
    .head
    {
        background-color: #3185bf;
        margin: 0;
        padding: 0;
    }
    .logo
    {
        padding: 0px;
    }
    .nav {
        display: flex;
        background-color: #333;
    }
    .dropdown {
        position: relative;
        border-color: #3185bf;
    }
    .dropdown-toggle a {
        font-size: 1.5em;
        display: block;
        color: white;
        padding: 10px 35px;
        text-decoration: none;
    }
    .dropdown-menu {
        position: absolute;
        display: none;
        width: 100%; /*否则按内容计算*/
        background-color: #333;
        z-index: 999;
    }
    .dropdown-menu ul {
        list-style: none;

    }
    .dropdown-menu ul li a{
        color: white;
        font-size: 1em;
        text-decoration: none;
    }
    .dropdown:hover .dropdown-menu {
        display: block;
    }
    .dropdown-menu a:hover {
        background: black;
    }

</style>
<header>
    <div class="head">
        <div class="logo">
            <a>
                <img src="https://icec.nefu.edu.cn/images/logo.png">
            </a>
        </div>
    </div>
    <nav class="nav">
        <div class="dropdown">
            <div class="dropdown-toggle">
                <a href="index">首页</a>
            </div>
        </div>
        <div class="dropdown">
            <div class="dropdown-toggle">
                <a href="zydetail">专业介绍</a>
            </div>
            <div class="dropdown-menu">
                <ul>
                    <li><a href="zydetail">专业简介</a></li>
                    <li><a href="zyfxdetail">方向简介</a></li>
                </ul>
            </div>
        </div>
        <div class="dropdown">
            <div class="dropdown-toggle">
                <a href="lab">实验室</a>
            </div>
            <div class="dropdown-menu">
                <ul>
                    <li><a href="lab">软件工程实验室</a></li>
                    <li><a href="labx">嵌入式实验室</a></li>
                    <li><a href="laby">移动开发实验室</a></li>
                </ul>
            </div>
        </div>
        <div class="dropdown">
            <div class="dropdown-toggle">
                <a href="getteachers">教师队伍</a>
            </div>
            <div class="dropdown-menu">
                <ul>
                    <li><a href="getteachersT?title=1" >教授</a></li>
                    <li><a href="getteachersT?title=2" >副教授</a></li>
                    <li><a href="getteachersT?title=3" >讲师</a></li>
                </ul>
            </div>
        </div>
        <div class="dropdown">
            <div class="dropdown-toggle">
                <a href="https://icec.nefu.edu.cn/jygz/jyxx.htm" target="_blank">就业指南</a>
            </div>
        </div>
        <div class="dropdown right">
            <div class="dropdown-toggle">
                <a href="welcome">登录</a>
            </div>
        </div>
    </nav>
</header>
