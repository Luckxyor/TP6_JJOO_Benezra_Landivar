window.addEventListener('scroll', function() {
    const header = document.querySelector('.header-pages, .header-index');
    const nav = document.getElementById('main-nav');
    const headerHeight = header.getBoundingClientRect().height;

    if (window.scrollY > headerHeight) {
        nav.classList.add('scrolled');
    } else {
        nav.classList.remove('scrolled');
    }
});