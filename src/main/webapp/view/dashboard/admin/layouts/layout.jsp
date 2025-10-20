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
    <html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <script src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js" defer></script>
        <style>
            [x-cloak] { display: none !important; }
        </style>
    </head>

    <body class="overflow-hidden">
    <div x-data="{ sidebarOpen: false }" class="relative flex h-screen text-gray-800 bg-white font-roboto">
        <div :class="sidebarOpen ? 'block' : 'hidden'" @click="sidebarOpen = false"
             class="fixed inset-0 z-20 transition-opacity bg-black opacity-50 lg:hidden hidden"></div>

        <!-- sidebar -->
                <%@ include file="sidebar.jsp" %>

        <div class="flex flex-col flex-1 overflow-hidden bg-gray-100">
            <!-- header -->
                    <%@ include file="header.jsp" %>

            <main class="flex-1 overflow-y-auto">
                <div class="px-2 py-6 sm:px-6">

<%--                    main-content--%>
                    <c:import url="${page}" />

                </div>
            </main>
        </div>
    </div>

        <script src="<%= request.getContextPath() %>/view/dashboard/admin/assets/js/dashboard.js"></script>

    </body>
    </html>
