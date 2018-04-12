<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.GregorianCalendar" %><%--
  Created by IntelliJ IDEA.
  User: 49539
  Date: 2018/4/12
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>自动刷新实例</h2>
<%
    response.setIntHeader("Refresh",1);
    Calendar calendar = new GregorianCalendar();
    String am_pm;
    int hour = calendar.get(Calendar.HOUR);
    int minute = calendar.get(Calendar.MINUTE);
    int second = calendar.get(Calendar.SECOND);
    if(calendar.get(Calendar.AM_PM)== 0){
        am_pm = "AM";
    }else{
        am_pm = "PM";
    }
    String CT = hour+":"+minute+":"+second+" "+ am_pm;
    out.println("当前时间："+CT );
%>
</body>
</html>
