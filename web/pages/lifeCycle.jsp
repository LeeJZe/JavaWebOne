<%--
  Created by IntelliJ IDEA.
  User: 49539
  Date: 2018/4/10
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
    private  int initVar = 0;
    private  int serviceVar = 0;
    private  int destoryVar = 0;
%>
<%!
    public void jspInit(){
        initVar++;
        System.out.println("jspInit():JSP被初始化了"+initVar+"次");
    }
    public void jspDestroy(){
        destoryVar++;
        System.out.println("jspDestory():JSP被销毁了"+destoryVar+"次");
    }
%>
<%
    serviceVar++;
    System.out.println("_jspService():JSP共响应了"+serviceVar+"次");
    String content1 = "初始化次数：" + initVar;
    String content2 = "响应客户端请求次数"+ serviceVar;
    String content3 = "销毁次数："+ destoryVar;

%>
    <h1>JSP生命周期测试</h1>
    <p><%=content1%></p>
    <p><%=content2%></p>
    <p><%=content3%></p>


</body>
</html>
