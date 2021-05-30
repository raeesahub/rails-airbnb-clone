const initNavLinks = () => {

  const flats = document.querySelector('.flats')
  const bookings = document.querySelector('.bookings')
  const tabs = document.querySelectorAll('.list-inline tabs-underlined')

  const flatTab = document.querySelector('#tab-flat')
  const bookingTab = document.querySelector('#tab-booking')

 flatTab.addEventListener('click', tab => {
    event.preventDefault();
    bookingTab.classList.remove('active')
    bookings.classList.remove('active')
    event.currentTarget.classList.add('active')
    flats.classList.add('active');
 })

 bookingTab.addEventListener('click', tab => {
    event.preventDefault();
    event.currentTarget.classList.add('active')
    flatTab.classList.remove('active')
    flats.classList.remove('active')
    bookings.classList.add('active');
 })
}
export { initNavLinks };
