<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: 49539
  Date: 2018/4/10
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <!--需要导入包java.util.Date和java.text.SimpleDateFormat-->
    <!--今天的日期是：<%=new SimpleDateFormat("YYYY-MM-dd HH:mm:ss").format(new Date())%>
    -->
    <%!
        String nowDate = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss").format(new Date());
    %>

    今天的日期是：<%=nowDate%>
</body>
</html>
