<%--
  Created by IntelliJ IDEA.
  User: 49539
  Date: 2018/4/16
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    // 解决中文乱码的问题
    String name = new String((request.getParameter("name")).getBytes("ISO-8859-1"),"UTF-8");
%>
    <h1>使用post方法读取数据</h1>
    姓名：<%=name%>
    年龄：<%=request.getParameter("age")%>
    google:<%=request.getParameter("google")%>
    baidu:<%=request.getParameter("baidu")%>
</body>
</html>
