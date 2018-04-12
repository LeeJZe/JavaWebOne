<%--
  Created by IntelliJ IDEA.
  User: 49539
  Date: 2018/4/12
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    int i;
%>
    <h1>循环实例</h1>
    <p>
        out.println的东西就相当于在页面写html代码 ， html代码换行并不能导致页面显示的换行，还得在要换行的代码后加&lt;br/&gt;
    </p>
<%
    for(i=1;i<4;i++){
        out.println("这是第"+i+"行");%>
    <br/>
<%
    }
%>

</body>
</html>
