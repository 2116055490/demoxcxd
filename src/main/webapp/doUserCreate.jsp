<%--
  Created by IntelliJ IDEA.
  User: l
  Date: 2021/9/28
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String[] hobbys = request.getParameterValues("hobbys");
    System.out.println(username+" "+password+" "+email+""+hobbys);

%>
用户名：
<%
    if (username != null && !"".equals(username)){
        out.print(username);
    }else{
        out.print("用户名不存在");
    }
%>
</body>
</html>
