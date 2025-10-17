<!-- Header -->
<header
        class="bg-white shadow-sm border-b border-gray-200 p-4 flex items-center justify-between"
>
    <h2 class="text-xl font-semibold text-gray-800">Tableau de bord</h2>

    <div class="flex items-center gap-4">
        <button
                class="p-2 rounded-lg hover:bg-gray-100 transition relative"
        >
            <i class="fa-solid fa-bell text-gray-600 text-lg"></i>
            <span
                    class="absolute top-1 right-1 w-2 h-2 bg-red-500 rounded-full"
            ></span>
        </button>

        <!-- Profile -->
        <div class="relative">
            <button
                    id="profileBtn"
                    class="flex items-center gap-3 focus:outline-none"
            >
                <div class="text-right">
                    <p class="text-sm font-semibold text-gray-800">
                        Ahmed Bennani
                    </p>
                    <p class="text-xs text-gray-500">Administrateur</p>
                </div>
                <img
                        src="https://ui-avatars.com/api/?name=Ahmed+Bennani&background=4f46e5&color=fff"
                        alt="Avatar"
                        class="w-10 h-10 rounded-full cursor-pointer"
                />
            </button>

            <!-- Modal Profil -->
            <div
                    id="profileModal"
                    class="hidden absolute right-0 mt-2 w-48 bg-white rounded-lg shadow-lg border border-gray-200 z-50"
            >
                <ul class="text-sm text-gray-700">
                    <li>
                        <a href="#" class="block px-4 py-2 hover:bg-gray-100"
                        ><i class="fa-solid fa-user mr-2"></i>Profil</a
                        >
                    </li>
                    <li>
                        <a href="#" class="block px-4 py-2 hover:bg-gray-100"
                        ><i class="fa-solid fa-gear mr-2"></i>Paramètres</a
                        >
                    </li>
                    <li><hr class="my-1" /></li>
                    <li>
                        <a
                                href="#"
                                class="block px-4 py-2 text-red-600 hover:bg-gray-100"
                        ><i class="fa-solid fa-right-from-bracket mr-2"></i
                        >Deconnexion</a
                        >
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>