<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <%-- 导入jquery包 --%>
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.6.0.js"></script>

    <script>
        function a() { /* 此处的a() 方法由UI失去焦点时触发执行，中间通过ajax来调用controller里面的方法*/
            $.post({
                url: "${pageContext.request.contextPath}/a1", // 指向controller的a1()
                data: {"name": $("#username").val()},  // 传入参数名为"name"，值从DOM下CSS为"username"的输入框获取
                success: function (data, status) {     //  成功后的回调函数，此处直接弹窗便于测试
                    alert(data);
                    console.log("data=" + data);
                    console.log("status=" + status)
                },
                error: function () {

                }
            })
        }
    </script>
</head>

<body>
<%-- 失去焦点到时候，发起一个请求到后台 --%>
用户名： <input type="text" id="username" onblur="a()">

</body>

</html>
