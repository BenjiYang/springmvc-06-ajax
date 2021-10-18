<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <%-- 导入jquery包 --%>
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.6.0.js"></script>

    <script>
        $(
            function a() {
                $("#btn").click(function () {
                    // 调试语句
                    console.log("点击了按钮");
                    /**
                     * AJAX post() 简写方式测试post返回数据输出到console
                     *
                     * 格式： $.post(url, param[可以省略], success)
                     *
                     */
                    $.post("${pageContext.request.contextPath}/a2", function (data) {
                        // console.log(data);
                        var html = "";

                        for (let i = 0; i < data.length; i++) {
                            html += "<tr>" +
                                "<td>" + data[i].name + "</td>" +
                                "<td>" + data[i].age + "</td>" +
                                "<td>" + data[i].sex + "</td>" +
                                "</tr>"
                        }

                        $("#content").html(html);
                    })

                })
            }
        )
    </script>

</head>
<body>

<input type="button" value="加载数据" id="btn">
<table>
    <tr>
        <td>姓名</td>
        <td>年龄</td>
        <td>性别</td>
    </tr>
    <tbody id="content"> <%-- 数据由javascript填入，此时前端html实际是空壳子 --%>
    <%-- 数据：后台 --%>

    </tbody>
</table>

</body>
</html>
