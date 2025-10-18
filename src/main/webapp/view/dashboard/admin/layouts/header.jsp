<header class="bg-white border-b border-gray-200 sticky top-0 z-40">
    <div class="px-8 py-4 flex items-center justify-between">
        <!-- Search Bar -->
        <div class="flex-1 max-w-md">
            <div class="relative">
                <i class="fas fa-search absolute left-4 top-1/2 transform -translate-y-1/2 text-gray-400"></i>
                <input
                        type="text"
                        placeholder="Find anything..."
                        class="w-full pl-11 pr-4 py-2.5 bg-gray-50 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent text-sm"
                >
            </div>
        </div>

        <!-- Right Side Icons -->
        <div class="flex items-center gap-4 ml-8">
            <!-- Notifications -->
            <button class="relative p-2 hover:bg-gray-100 rounded-lg transition-colors">
                <i class="far fa-bell text-gray-600 text-xl"></i>
                <span class="absolute top-1 right-1 w-2 h-2 bg-red-500 rounded-full"></span>
            </button>

            <!-- User Profile Dropdown -->
            <div class="dropdown">
                <button id="profileBtn" class="flex items-center gap-3 p-1 hover:bg-gray-100 rounded-lg transition-colors">
                    <img
                            src="https://i.pravatar.cc/150?img=12"
                            alt="User Avatar"
                            class="w-9 h-9 rounded-full"
                    >
                </button>

                <!-- Dropdown Menu -->
                <div id="dropdownMenu" class="dropdown-menu">
                    <div class="dropdown-item">
                        <i class="far fa-user w-5 text-gray-500"></i>
                        <span class="text-sm font-medium">Profile</span>
                    </div>
                    <div class="dropdown-item">
                        <i class="fas fa-cog w-5 text-gray-500"></i>
                        <span class="text-sm font-medium">Settings</span>
                    </div>
                    <div class="dropdown-item">
                        <i class="far fa-bell w-5 text-gray-500"></i>
                        <span class="text-sm font-medium">Notifications</span>
                    </div>
                    <div class="dropdown-divider"></div>
                    <div class="dropdown-item">
                        <i class="fas fa-sign-out-alt w-5 text-gray-500"></i>
                        <span class="text-sm font-medium">Logout</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>