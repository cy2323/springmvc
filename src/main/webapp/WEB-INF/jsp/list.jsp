<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 很多朋友会遇到controller传过来的modelandview对象却在jsp页面中取不到对象中的值，试试加上以下的设定~~~ -->
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Title</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-grid.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-reboot.min.css">
</head>
<body>
    <div class="form-box">
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


                <form class="form-inline my-2 my-lg-0" action="#">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">检索</button>
                </form>

            </nav>
        </div>

        <div class="container" style="margin-top: 100px">
            <table class="table table-bordered">
                <thead class="table-primary">
                    <tr>
                        <td scope="col" align="center"><h4 class="display-5">图书ID</h4></td>
                        <td scope="col" align="center"><h4 class="display-5">图书名称</h4></td>
                        <td scope="col" align="center"><h4 class="display-5">馆藏数量</h4></td>
                        <td scope="col" align="center"><h4 class="display-5">操作</h4></td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${list }" var="bean">
                        <tr >
                            <td align="center">${bean.bookId }</td>
                            <td align="center">${bean.name }</td>
                            <td align="center">${bean.number }</td>
                            <td align="center"><a class="btn btn-outline-warning" role="button" href="${pageContext.request.contextPath}/book/${bean.bookId }/delete">删除</a> </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                </ul>
            </nav>
        </div>

    </div>

    <!--jQuery的js文件必须要在bootstrap的js文件前引用-->
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.0.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
