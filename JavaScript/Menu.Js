// Categorias menu desplegable
document.addEventListener('DOMContentLoaded', () => {
    const toggles = document.querySelectorAll('.dropdown-toggle');
    const dropdowns = document.querySelectorAll('.dropdown');

    toggles.forEach(toggle => {
        toggle.addEventListener('click', (event) => {
            event.preventDefault();
            const dropdownContent = toggle.nextElementSibling;
            dropdownContent.classList.toggle('show');
        });
    });

    dropdowns.forEach(dropdown => {
        dropdown.addEventListener('mouseleave', () => {
            const dropdownContent = dropdown.querySelector('.dropdown-content');
            dropdownContent.classList.remove('show');
        });
    });
});