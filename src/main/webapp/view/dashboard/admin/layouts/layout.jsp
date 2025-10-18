<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 14/10/2025
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
    <html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Merakiui Dashboard</title>

        <script src="https://cdn.tailwindcss.com"></script>
        <script src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js" defer></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

        <link rel="stylesheet" href="<%= request.getContextPath() %>/view/dashboard/admin/assets/css/dashboard.css">
        <style>

        </style>
    </head>
    <body class="bg-gray-50">
    <!-- Sidebar -->
        <%@ include file="sidebar.jsp" %>

    <!-- Main Content Area -->
    <div id="mainContent" class="main-content min-h-screen flex flex-col">
        <!-- Header -->
        <%@ include file="header.jsp" %>


        <!-- Main Content Section -->
        <main class="flex-1 overflow-y-auto">
            <div class="p-4">
                <!-- Votre contenu ici -->
                <div class="min-h-screen">
                    <!-- Section vide pour votre contenu -->
                           <c:import url="${page}" />
                </div>
            </div>
        </main>
    </div>

    <script src="<%= request.getContextPath() %>/view/dashboard/admin/assets/js/dashboard.js"></script>

    </body>
    </html>
