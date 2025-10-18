const profileBtn = document.getElementById('profileBtn');
const dropdownMenu = document.getElementById('dropdownMenu');

// Toggle Dropdown
profileBtn.addEventListener('click', (e) => {
    e.stopPropagation();
    dropdownMenu.classList.toggle('active');
});

// Close dropdown when clicking outside
document.addEventListener('click', (e) => {
    if (!profileBtn.contains(e.target) && !dropdownMenu.contains(e.target)) {
        dropdownMenu.classList.remove('active');
    }
});


// page active
document.addEventListener("DOMContentLoaded", function () {
    const currentPath = window.location.pathname;
    const links = document.querySelectorAll(".menu-item");

    links.forEach(link => {
        if (link.getAttribute("href") && currentPath.includes(link.getAttribute("href"))) {
            link.classList.add("active", "text-gray-800", "font-semibold");
        } else {
            link.classList.remove("active");
        }
    });
});