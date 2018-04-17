<%--
  Created by IntelliJ IDEA.
  User: 49539
  Date: 2018/4/16
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>使用post方法读取数据</h1>
    <form action="formPost2.jsp" method="post">
        姓名：<input type="text" name="name" id="name"/>
        <br/>
        年龄：<input type="text" name="age" id="age">
        <br/>
        google:<input type="checkbox" name="google" id="google" checked="checked"><br/>

        baidu:<input type="checkbox" name="baidu" id="baidu"  >
        <input type="submit" value="提交">
    </form>

</body>
</html>
