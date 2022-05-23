<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-23
  Time: 오후 4:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="\resources\js\jquery.js"></script>
</head>
<body>
<div class="form-control input-group" style="width: 450px">
    <div class="input-group">
    <p class="form-control input-group">${findmem.btext}</p>
<p class="input-group-text ">조회수 : ${findmem.bhit}</p>
    </div>
    <div class="input-group">
        <a href="/board/pwc/update?id=${findmem.id}"><button class="btn btn-outline-secondary">글 수정</button></a>
        <a href="/board/pwc/delete?is=${findmem.id}"><button class="btn btn-outline-secondary">글 삭제</button></a>
    </div>

</div>

</body>
</html>
