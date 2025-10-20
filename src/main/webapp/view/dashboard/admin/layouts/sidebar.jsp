
<div :class="sidebarOpen ? 'translate-x-0 ease-in' : '-translate-x-full ease-out'"
     class="fixed inset-y-0 left-0 z-30 w-64 px-4 overflow-y-auto transition duration-200 transform bg-white border-r border-gray-100 lg:translate-x-0 lg:relative lg:inset-0 -translate-x-full ease-out">
    <div class="flex items-center mt-8">
        <!-- <img
    class="w-auto h-8"
    src="/preview/premium-dashboard/assets/images/full-logo.svg"
    alt=""
  /> -->
        <h1> Dashboard</h1>
    </div>

    <hr class="my-6 border-gray-100" />

    <nav class="space-y-8">
        <div class="space-y-4">
            <h3 class="px-4 text-sm tracking-wider text-gray-400 uppercase">
                PAGES
            </h3>

            <a class="menu-item flex items-center px-4 py-2 text-gray-500 transition-colors duration-200 transform rounded-lg hover:text-gray-600 hover:bg-gray-100 bg-opacity-40"
               href="${pageContext.request.contextPath}/admin/stats">
                <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24"
                     stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                          d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6">
                    </path>
                </svg>

                <span class="mx-3 font-medium capitalize">Dashboard</span>
            </a>

            <a class="menu-item flex items-center px-4 py-2 text-gray-500 transition-colors duration-300 transform bg-gray-200 rounded-lg bg-opacity-40"
               href="${pageContext.request.contextPath}/admin/docteurs">
                <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24"
                     stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round"
                          d="M4 7v10c0 2.21 3.582 4 8 4s8-1.79 8-4V7M4 7c0 2.21 3.582 4 8 4s8-1.79 8-4M4 7c0-2.21 3.582-4 8-4s8 1.79 8 4m0 5c0 2.21-3.582 4-8 4s-8-1.79-8-4">
                    </path>
                </svg>

                <span class="mx-3 font-medium capitalize">docteurs</span>
            </a>

            <a class="menu-item flex items-center px-4 py-2 text-gray-500 transition-colors duration-300 transform rounded-lg hover:text-gray-600 hover:bg-gray-100 bg-opacity-40"
               href="${pageContext.request.contextPath}/admin/departements">
                <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24"
                     stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                          d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z"></path>
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                          d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"></path>
                </svg>

                <span class="mx-3 font-medium capitalize">departements</span>
            </a>

            <a class="menu-item flex items-center px-4 py-2 text-gray-500 transition-colors duration-300 transform rounded-lg hover:text-gray-600 hover:bg-gray-100 bg-opacity-40"
               href="${pageContext.request.contextPath}/admin/salles">
                <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24"
                     stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                          d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z">
                    </path>
                </svg>

                <span class="mx-3 font-medium capitalize">Salles</span>
            </a>

            <a class="menu-item flex items-center px-4 py-2 text-gray-500 transition-colors duration-300 transform rounded-lg hover:text-gray-600 hover:bg-gray-100 bg-opacity-40"
               href="${pageContext.request.contextPath}/admin/patients">
                <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24"
                     stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                          d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z">
                    </path>
                </svg>

                <span class="mx-3 font-medium capitalize">Patients</span>
            </a>

            <a class="menu-item flex items-center px-4 py-2 text-gray-500 transition-colors duration-300 transform rounded-lg hover:text-gray-600 hover:bg-gray-100 bg-opacity-40"
               href="${pageContext.request.contextPath}/admin/consultations">
                <svg class="w-6 h-6" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                            d="M13 10V14H19V10H13ZM11 10H5V14H11V10ZM13 19H19V16H13V19ZM11 19V16H5V19H11ZM13 5V8H19V5H13ZM11 5H5V8H11V5ZM19 3C20.1046 3 21 3.89543 21 5V19C21 20.1046 20.1046 21 19 21H5C3.89543 21 3 20.1046 3 19V5C3 3.89543 3.89543 3 5 3H19Z"
                            fill="currentColor"></path>
                </svg>

                <span class="mx-3 font-medium capitalize">Consultations</span>
            </a>


        </div>
    </nav>
</div>




