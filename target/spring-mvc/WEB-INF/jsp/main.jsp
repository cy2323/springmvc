<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 很多朋友会遇到controller传过来的modelandview对象却在jsp页面中取不到对象中的值，试试加上以下的设定~~~ -->
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Title</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-grid.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-reboot.min.css">
</head>
<body>

    <div class="container fixed-top">
        <nav class="navbar navbar-expand-lg navbar-light bg-light" role="navigation">
            <div class="navbar-brand"><h1 class="display-4">Aoki Tech</h1></div>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">主页 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">链接</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Dropdown
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li>
                </ul>
            </div>


            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">检索</button>
            </form>

        </nav>
    </div>

    <div class="container" style="margin-top: 100px">
        <div class="row no-gutters">
            <div class="col-md-4 fixed-top">
                <div class="list-group">
                    <a href="#" class="list-group-item list-group-item-action active">Spring从入门到放弃</a>
                    <a href="#" class="list-group-item list-group-item-action">Spring Boot从入门到放弃</a>
                    <a href="#" class="list-group-item list-group-item-action">Spring MVC从入门到放弃</a>
                    <a href="#" class="list-group-item list-group-item-action">MySQL性能调优</a>
                    <a href="#" class="list-group-item list-group-item-action disabled" tabindex="-1" aria-disabled="true">机器学习</a>
                </div>
            </div>
            <div class="col-md-8">

                <h1>这里填什么呢？</h1>

            </div>
        </div>



    </div>



    <!--jQuery的js文件必须要在bootstrap的js文件前引用-->
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.0.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
