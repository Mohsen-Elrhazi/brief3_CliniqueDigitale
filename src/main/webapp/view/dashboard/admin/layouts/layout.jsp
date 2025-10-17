<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 14/10/2025
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <script src="https://cdn.tailwindcss.com"></script>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
    />
    <title>Dashboard Admin</title>
</head>
<body class="bg-gray-100 font-sans">
<div class="flex h-screen overflow-hidden">
    <!-- Sidebar -->
    <%@ include file="sidebar.jsp" %>

    <!-- Main Content -->
    <div class="flex-1 flex flex-col overflow-hidden">
        <!-- Header -->
        <%@ include file="header.jsp" %>

        <!-- Main Section -->
        <main class="flex-1 overflow-y-auto p-6">
            <div class="text-gray-600">

<%--                <jsp:include page="<%= request.getAttribute("page") %>" />--%>
       <c:import url="${page}" />


            </div>
        </main>
    </div>
</div>

<script src="<%= request.getContextPath() %>/view/dashboard/admin/assets/js/dashboard.js"></script>

</body>
</html>
