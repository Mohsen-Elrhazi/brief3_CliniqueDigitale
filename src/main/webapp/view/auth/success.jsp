<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 15/10/2025
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- Afficher un message succès --%>
<c:if test="${not empty succes}">
    <div style="color: green;">${succes}</div>
</c:if>
</body>
</html>
