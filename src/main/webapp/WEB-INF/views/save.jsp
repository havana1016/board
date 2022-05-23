<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-23
  Time: 오전 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="\resources\js\jquery.js"></script>
    <title>Save</title>

</head>
<body>
<form class="form-control" action="/board/save" method="post">
    작성자 : <input type="text" class="form-control" name="bname" autofocus>
    제목 : <input type="text" class="form-control" name="btitle">
    비밀번호 : <input type="text" class="form-control" name="bpw">
    내용 : <textarea class="form-control" name="btext"></textarea><br>
    <input class="btn btn-outline-secondary" type="submit" value="글 작성하기">
    <input class="btn btn-outline-secondary" type="reset" value="취소하기">
</form>
<div id="list">

</div>


</body>
</html>
