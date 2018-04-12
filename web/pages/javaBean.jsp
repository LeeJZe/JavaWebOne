<%@ page import="com.demo.TestBean" %><%--
  Created by IntelliJ IDEA.
  User: 49539
  Date: 2018/4/12
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h1>JavaBean开发要求</h1>
<pre>
    JavaBean本身就是一个类，属于Java的面向对象编程。

    在JSP中如果要应用JSP提供的Javabean的标签来操作简单类的话，则此类必须满足如下的开发要求。

    1）：所有的类必须放在一个包中，在WEB中没有包的类是不存在的；

    2）：所有的类必须声明为public class，这样才能够被外部所访问；

    3）：类中所有的属性都必须封装，即：使用private声明；

    4）：封装的属性如果需要被外部所操作，则必须编写相应的setter、getter方法。

    5）：一个JavaBean中至少存在一个无参的构造方法，此为JSP中的标签所使用。
</pre>
<%
    TestBean demo = new TestBean();
    demo.setAge("10");
    demo.setName("Tom");
%>
    <h2>姓名：<%=demo.getName()%></h2>
    <h2>年龄：<%=demo.getAge()%></h2>
<jsp:useBean id="test1" class="com.demo.TestBean"/>
<jsp:setProperty name="test1" property="name" value="lucy"/>
<jsp:setProperty name="test1" property="age" value="12"/>
    <h3>姓名：<jsp:getProperty name="test1" property="name"/></h3>
    <h3>年龄：<jsp:getProperty name="test1" property="age"/></h3>




</body>
</html>
