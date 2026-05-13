<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>正在前往首页</title>
    <style>
        p{
            text-align: center;
        }
        span{
            color: #ff0000;
        }
    </style>
</head>
<body>

<p>
    <img  src="img/001.png"/>
    <br />
    注册成功!页面<span id="t001">5</span>秒后自动跳转到首页...
</p>
</body>
<script>
    var num=5;
    function fun(){
        num--;
        if(num==0){
            location.href="${pageContext.request.contextPath}/Download.html";
        }
        var spantime=document.getElementById("t001");
        spantime.innerHTML=num;
    }
    setInterval(fun,1000);
</script>
</html>
