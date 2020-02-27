// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

import "bootstrap";
document.addEventListener('turbolinks:load', () => {
  const totalPrice = document.querySelector(".total-price");
  if (totalPrice) {
    const price = parseInt(totalPrice.dataset.price, 10);
    const inputTotalPrice = document.getElementById("total_price");
    const startsAt = document.getElementById("rental_starts_at");
    const endsAt = document.getElementById("rental_ends_at");
    startsAt.addEventListener("change", () => {
      let startsAtDate = Date.parse(startsAt.value);
      let endsAtDate = Date.parse(endsAt.value);
      if (startsAtDate > endsAtDate) {
        let result = "Ends at should be greater than Starts at!"
        totalPrice.classList.remove("d-none")
        totalPrice.innerText = result
      } else {
        let diffTime = Math.abs(endsAtDate - startsAtDate);
        let result = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
        totalPrice.classList.remove("d-none")
        totalPrice.innerText = `Total price: £${result * price}`
        inputTotalPrice.value = result * price
      }
    })
    endsAt.addEventListener("change", () => {
      let startsAtDate = Date.parse(startsAt.value);
      let endsAtDate = Date.parse(endsAt.value);
      if (startsAtDate > endsAtDate) {
        let result = "Ends at should be greater than Starts at!"
        totalPrice.classList.remove("d-none")
        totalPrice.innerText = result
      } else {
        let diffTime = Math.abs(endsAtDate - startsAtDate);
        let result = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
        totalPrice.classList.remove("d-none")
        totalPrice.innerText = `Total price: £${result * price}`
        inputTotalPrice.value = result * price
      }
    })
  }
});
