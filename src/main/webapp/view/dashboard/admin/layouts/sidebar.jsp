<!-- Sidebar -->
<aside class="w-64 bg-gradient-to-b from-indigo-600 to-indigo-800 text-white flex flex-col">
    <div class="p-[22px] border-b border-indigo-500">
        <h1 class="text-2xl font-bold">Dashboard</h1>
    </div>

    <nav class="flex-1 p-4 overflow-y-auto space-y-2">
        <a href="${pageContext.request.contextPath}/admin/stats" class="flex items-center gap-3 p-3 rounded-lg bg-indigo-700 hover:bg-indigo-600 transition">
            <i class="fa-solid fa-house w-5"></i>
            <span>Stats</span>
        </a>
        <a href="${pageContext.request.contextPath}/admin/docteurs" class="flex items-center gap-3 p-3 rounded-lg hover:bg-indigo-700 transition">
            <i class="fa-solid fa-chart-bar w-5"></i>
            <span>Docteurs</span>
        </a>
        <a href="#" class="flex items-center gap-3 p-3 rounded-lg hover:bg-indigo-700 transition">
            <i class="fa-solid fa-users w-5"></i>
            <span>Departements</span>
        </a>
        <a href="#" class="flex items-center gap-3 p-3 rounded-lg hover:bg-indigo-700 transition">
            <i class="fa-solid fa-gear w-5"></i>
            <span>Patient</span>
        </a>
    </nav>

    <div class="p-4 border-t border-indigo-500">
        <button class="w-full flex items-center gap-3 p-3 rounded-lg hover:bg-indigo-700 transition">
            <i class="fa-solid fa-right-from-bracket w-5"></i>
            <span>Déconnexion</span>
        </button>
    </div>
</aside>