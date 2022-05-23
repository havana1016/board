<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-23
  Time: 오후 5:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="\resources\js\jquery.js"></script>
    <title>Title</title>
    <script>
        function pwc(){
            console.log("ajax시작")
            let pw=document.getElementById("bpw")
            $.ajax({
                url:"uppw",
                type:"post",
                data:{id:${id},bpw:pw.value},
                dataType:"json",
                success:function (e){
                    alert("ajax 리턴 성공")


                },
                error:function (e){
                    alert("비밀번호를 확인해주세요")

                }

            })

        }
    </script>


</head>
<body>
<div class="form-control">

    <input name="bpw" id="bpw" placeholder="패스워드를 입력하세요" autofocus>
    <button class="btn btn-outline-secondary" onclick="pwc()">확인</button>
</div>
</body>
</html>
