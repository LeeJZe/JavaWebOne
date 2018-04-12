<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: 49539
  Date: 2018/4/12
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>HTTP头部请求实例</h2>
    <table width="100%" border="1" align="center">
        <tr bgcolor="aqua">
            <th>Header Name</th>
            <th>Header Values</th>
        </tr>
        <%
            Enumeration headerNames = request.getHeaderNames();
            while (headerNames.hasMoreElements()){
                String paramName =(String) headerNames.nextElement();
                out.print("<tr><td>"+ paramName+"</td>\n");
                String paramValue = request.getHeader(paramName);
                out.print("<td>"+ paramValue+"</td>\n");

            }
        %>

    </table>

</body>
</html>
