<div id="sidebar" class="sidebar-expanded h-screen bg-white border-r border-gray-200 transition-all duration-300 flex flex-col fixed left-0 top-0">
    <!-- Logo Section -->
    <div class="p-6 flex items-center gap-3">
        <div class="w-10 h-10 logo-gradient rounded-lg flex items-center justify-center flex-shrink-0">
            <svg class="w-6 h-6 text-white" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M3 3L10.5 12L3 21M13.5 3L21 12L13.5 21" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
        </div>
        <span class="logo-text text-gray-800 sidebar-text">erakiui</span>
    </div>

    <!-- Main Navigation -->
    <div class="flex-1 px-3 overflow-y-auto">
        <!-- Pages Section -->
        <div class="mb-6">
            <p class="section-title px-3 mb-2 sidebar-text">PAGES</p>
            <nav class="space-y-1">

<%--                <a href="${pageContext.request.contextPath}/admin/stats" class="menu-item  text-gray-600 rounded-lg">--%>
<%--&lt;%&ndash;                    <i class="fas fa-home"></i>&ndash;%&gt;--%>
<%--            <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">--%>
<%--                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z"></path>--%>
<%--                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"></path>--%>
<%--            </svg>--%>
<%--            <span class="sidebar-text font-medium">Statistiques</span>--%>
<%--                </a>--%>

    <a class="flex items-center px-4 py-2 text-gray-600 transition-colors duration-200 transform bg-gray-200 rounded-lg bg-opacity-40" href="/preview/premium-dashboard/">
        <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path>
        </svg>

        <span class="mx-3 font-medium capitalize">Statistiques</span>
    </a>


                <a href="${pageContext.request.contextPath}/admin/docteurs" class="menu-item text-gray-600">
                    <i class="fas fa-database"></i>
                    <span class="sidebar-text font-medium">Docteurs</span>
                </a>
                <a href="${pageContext.request.contextPath}/admin/departements" class="menu-item text-gray-600">
                    <i class="fas fa-chart-pie"></i>
                    <span class="sidebar-text font-medium">Departements</span>
                </a>

                <a href="${pageContext.request.contextPath}/admin/patients" class="menu-item text-gray-600">
                    <i class="fas fa-chart-pie"></i>
                    <span class="sidebar-text font-medium">Patients</span>
                </a>


                <a href="#" class="menu-item text-gray-600">
                    <i class="fas fa-table"></i>
                    <span class="sidebar-text font-medium">Salles</span>
                </a>
                <a href="#" class="menu-item text-gray-600">
                    <i class="fas fa-clipboard-list"></i>
                    <span class="sidebar-text font-medium">Consultations</span>
                </a>

            </nav>
        </div>


    </div>
</div>










