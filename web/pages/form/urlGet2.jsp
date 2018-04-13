<%--
  Created by IntelliJ IDEA.
  User: 49539
  Date: 2018/4/13
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>
        使用get方法获取url信息
    </h1>
    姓名：<%=request.getParameter("name")%>
    <br/>
    年龄：<%=request.getParameter("age")%>
</body>
</html>
