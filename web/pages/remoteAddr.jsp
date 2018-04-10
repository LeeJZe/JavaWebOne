<%--
  Created by IntelliJ IDEA.
  User: 49539
  Date: 2018/4/10
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    Hello world!
    <%
        out.println("你的ip地址为"+ request.getRemoteAddr());
    %>
    <pre>
        在WIN7下用request.getRemoteAddr()获取IP地址时，可能返回的值不是我们想要的IP，而是 0:0:0:0:0:0:0:1 这么一串值。这是ipv6协议的地址，可惜我们是想需要的是类似127.0.0.1这样的IP地址。其实这种情况只有在你的服务器和你的客户端是同一台机器所导致的，只有在这种情况下才会这样。
        原因是因为 C:\Windows\System32\drivers\etc\hosts 这个文件，这个文件中有这么两行：
        # 127.0.0.1 localhost
        # ::1 localhost
        这两个其实就是1个是针对IPV6的，一个是针对IPV4的。如果是win7系统的话 默认会采用IPV6的 因此我们这个地方获取到的值是 0:0:0:0:0:0:0:1，XP则不会出现这个问题。

        方法一（测试有效，360会报告域名重定向，火狐，IE未报）：
        如果采用win7的解决办法是删除 #::1 localhost 这行内容，或者是保持这一行为注释状态，并且取消 #127.0.0.1 localhost 这一行的 #号注释。网上大部分文章都说的这里的处理办法是 取消这一行的注释。如果单单只是取消注释的话，表示采用IPV6的协议来连接，可能会导致你的数据库连接出错。
        当然这个地方主要是win7 才会遇到的问题。因为只有win7是采用的IPV6。

        方法二(未经测试)：
        在本地的tomcat参数中添加：-Djava.net.preferIPv4Stack=true 让tomcat只支持ipV4.

        方法三（此方法最简便有效且安全）：
        在浏览器中不用locahost进行访问，而是直接输入127.0.0.1进行访问也可达到同样效果.
    </pre>

</body>
</html>
