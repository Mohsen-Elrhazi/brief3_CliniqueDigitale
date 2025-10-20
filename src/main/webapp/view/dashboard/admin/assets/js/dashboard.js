// Fichier : dashboard.js
document.addEventListener("DOMContentLoaded", function () {
    const currentPath = window.location.pathname;
    const links = document.querySelectorAll(".menu-item");

    links.forEach(link => {
        const linkPath = link.getAttribute("href");

        // Ignore les liens vides
        if (!linkPath) return;

        // Compare les chemins (avec ou sans / final)
        if (currentPath === linkPath || currentPath === (linkPath + "/")) {
            link.classList.add("active", "text-gray-600", "font-semibold", "bg-gray-200");
        } else {
            link.classList.remove("active","text-gray-600", "font-semibold", "bg-gray-200");
        }
    });
});
