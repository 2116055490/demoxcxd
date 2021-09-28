<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: l
  Date: 2021/9/28
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String password1 = request.getParameter("con_password");
    String email = request.getParameter("email");
    String[] hobbys = request.getParameterValues("hobbys");


%>
用户名：
<%
    if (username != null && !"".equals(username)){
        String s = new String(username.getBytes("ISO8859-1"),"UTF-8");
        out.print(s);
    }else{
        out.print("用户名不存在");
    }
%>
<br/>密码：
<%
  if (password != null && !"".equals(password)){

  }else{
      out.print("密码格式错误");
  }
  if (password1 != null && !"".equals(password1) && password.equals(password1)){
      out.print("输入密码正确");
  }else{
      out.print("您输入的密码有误，请确认您的密码");
  }
%>
<br/>邮箱：
<%
    if (email.indexOf('@')!=-1 && email.indexOf('.')>email.indexOf('@')){
        out.println("邮箱格式正确");
    }else{
        out.println("您输入的邮箱有误");
    }
%>
<br/>兴趣爱好：
<%
  out.print(hobbys);
%>
<%
    System.out.println(username+" "+password+" "+email+" "+ Arrays.toString(hobbys));
%>
</body>
</html>
