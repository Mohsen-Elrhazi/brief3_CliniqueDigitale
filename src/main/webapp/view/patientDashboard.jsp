<%@ page import="ma.project.brief3_cliniquedigitale.model.Personne" %><%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 16/10/2025
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard Patient</title>
</head>
<body>
<% Personne user= (Personne) session.getAttribute("user"); %>

<h1><%= user.getNom() %></h1>
<h1><%= user.getPrenom() %></h1>
<h1><%= user.getEmail() %></h1>
<h1><%= user.getRole() %></h1>




</body>
</html>
