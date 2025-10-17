    // Modal profil toggle
    const profileBtn = document.getElementById("profileBtn");
    const profileModal = document.getElementById("profileModal");

    profileBtn.addEventListener("click", () => {
    profileModal.classList.toggle("hidden");
});

    // Fermer le modal quand on clique ailleurs
    window.addEventListener("click", (e) => {
    if (
    !profileBtn.contains(e.target) &&
    !profileModal.contains(e.target)
    ) {
    profileModal.classList.add("hidden");
}
});
