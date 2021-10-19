<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <%-- 导入jquery包 --%>
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.6.0.js"></script>

    <script>
        function a1() {
            $.post({
                url: "${pageContext.request.contextPath}/login",
                data: {"username": $("#usr").val()},
                success: function (data) {
                    console.log(data);
                    if (data.toString() === '用户名正确') {
                        $("#userInfo").css("color", "green");
                    } else {
                        $("#userInfo").css("color", "black");
                    }
                    $("#userInfo").html(data);
                }
            })

        }

        function a2() {
            $.post({
                url: "${pageContext.request.contextPath}/login",
                data: {"password": $("#pwd").val()},
                success: function (data) {
                    console.log(data);
                    if (data.toString() === '密码正确') {
                        $("#pwdInfo").css("color", "green");
                    } else {
                        $("#pwdInfo").css("color", "black");
                    }
                    $("#pwdInfo").html(data);
                }
            })
        }
    </script>
</head>

<body>
<p>
    用户名：<input type="text" id="usr" onblur="a1()">
    <span id="userInfo"></span> <%-- 提示信息 --%>
</p>

<p>
    密码：<input type="text" id="pwd" onblur="a2()">
    <span id="pwdInfo"></span> <%-- 提示信息 --%>
</p>
</body>

</html>
