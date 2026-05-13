<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>用户注册</title>
    <style>
        #d1{
            margin-top: 50px;
        }
        #p1{
            text-align: center;
            height: 20px;
            color: coral;
            color: coral;
            font-size: 35px;
            margin-right: 64px;
        }
        #p2{
            font-family:"华文彩云";
            font-size: 20px;
            font-weight:700;
            color: red;
            height: 10px;
            margin-right: 64px;
        }
        #d_2{
            text-align: center;
            margin-left: 10px;
            margin-top: 15px;

        }
        #b_sbmit{
            font-size: 20px;
            font-family: "宋体";
            color: black;
            background-color: deepskyblue;
            margin-left: 20px;
        }
        #divcopy{
            text-align: center;
            padding-top: 60px;
            margin-right: 75px;
        }
        #cki{
            text-align: center;
            padding-top:7px;
            margin-right: 70px;
        }

        #input_check{
            width: 130px;
            height: 30px;
            margin-top: 8px;
        }
        #d_msg{
            color: red;
            margin-top: 10px;
            margin-right: 70px;
        }

    </style>

</head>
<body>
<div id="d1">
    <p id="p1" >My little friend!</p>
    <p id="p2" align="center">Wellcome to my Web!</p>
    <form id="form1" action="${pageContext.request.contextPath}/register" method="post">
        <table align="center">
            <tr>
                <td>用户名:</td>
                <td><input type="text" id="uname" name="username"></td>
                <td width="30%"><span id="s1"></span></td>
            </tr>
            <tr>
                <td>密码:</td>
                <td><input type="password" id="pword" name="password"></td>
                <td width="30%"><span id="s2"></span></td>
            </tr>
            <br>
            <tr>
                <td colspan="3">
                    <div id="cki">
                        <img id="checkimg" src="${pageContext.request.contextPath}/checkCode">
                    </div>

                    验证码：<input id="input_check" type="text" name="checkCode" >
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <div id="d_2">
                        <button id="b_sbmit"  type="submit">注册</button>
                    </div>
                </td>
            </tr>
        </table>
    </form>
</div>
<div id="d_msg" align="center">
    ${msg}
</div>

<div id="divcopy">
    &copy;By 常温超导体.
</div>
<script>
    window.onload=function(){
        document.getElementById("form1").onsubmit=function(){
            var uname=checkUsername();
            var pword=checkPassword();
            return uname&&pword;
        }
        document.getElementById("uname").onblur=function(){
            checkUsername();
        };
        document.getElementById("pword").onblur=function(){
            checkPassword();
        }

        //1.获取图片对象
        var img = document.getElementById("checkimg");
        //2.给图片绑定点击事件
        img.onclick=function () {
            //为了让浏览器不适用缓存,我们在请求后面加参数
            //时间戳
            var time = new Date().getTime();
            //3.重置src属性
            img.src="${pageContext.request.contextPath}/checkCode?aa="+time;
        }

    }

    function checkUsername(){
        var reg1=/^\w{6,12}$/;
        var uname=document.getElementById("uname").value;
        var bool=reg1.test(uname);
        var span=document.getElementById("s1");
        if(bool){
            span.innerHTML="√<img src='img/比心.jpg' width='20px' height='20px'/>"
        }else{
            span.innerHTML="用户名不合法";
        }
        return bool;
    }
    function checkPassword(){
        var reg1=/^\w{6,12}$/;
        var pword=document.getElementById("pword").value;
        var bool=reg1.test(pword);
        var span=document.getElementById("s2");
        if(bool){
            span.innerHTML="√<img src='img/比心.jpg' width='20px' height='20px'/>"
        }else{
            span.innerHTML="密码不合法";
        }
        return bool;
    }


</script>
</body>
</html>