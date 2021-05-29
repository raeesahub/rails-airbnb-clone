const initNavLinks = () => {

  const navLinks = document.querySelectorAll('.nav-item');

  navLinks.forEach(navLink => {
    navLink.addEventListener('click', event => {
      event.preventDefault()
      navLinks.forEach(navLink => {
        navLink.classList.remove('active');
      })
      const link = event.currentTarget;
      link.classList.add('active');
    })
  });
}

export { initNavLinks };
