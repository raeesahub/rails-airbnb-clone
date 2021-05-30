const initLanding = () => {
  const banner = document.querySelector('#banner')
  const bannerText = document.querySelector('.banner-landing')

  if (banner) {
    if (banner.getAttribute('src').includes('1559139061-28d9de44e40e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib')) {
      bannerText.style.color = "white";
    }
  }
}

export { initLanding };
