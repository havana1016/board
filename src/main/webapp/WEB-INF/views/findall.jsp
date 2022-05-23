
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-23
  Time: 오후 3:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>findall</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="\resources\js\jquery.js"></script>
    <script>

    </script>
</head>
<body>
    <table class="table table-bordered">
        <tr>
            <th>제목</th>
            <th>작성자</th>
            <th>조회수</th>
            <th>작성시간</th>
        </tr>
        <c:forEach var="list" items="${flist}">
            <tr>
                <td><a href="detail?id=${list.id}">${list.btitle}</a> </td>
                <td>${list.bname}</td>
                <td>${list.bhit}</td>
                <td>${list.bdate}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
