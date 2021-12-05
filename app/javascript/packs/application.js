// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener("DOMContentLoaded", function(){
  const topModalOpenButton = document.getElementById('top-modal-open');
  const topModal = document.getElementById('top-modal');
  const topModalCloseButton = document.getElementsByClassName('top-modal-close')[0];

  //ボタンがクリックされた時
  topModalOpenButton.addEventListener('click', topModalOpen);
  function topModalOpen() {
    topModal.style.display = 'block';
  };

  //戻るがクリックされた時
  topModalCloseButton.addEventListener('click', modalClose);
  function modalClose() {
    topModal.style.display = 'none';
  };

  //モーダルコンテンツ以外がクリックされた時
  addEventListener('click', outsideClose);
  function outsideClose(e) {
    if (e.target == topModal) {
      topModal.style.display = 'none';
    };
  };
}, false);
