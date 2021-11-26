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
  const buttonOpen = document.getElementById('modalOpen');
  const modal = document.getElementById('easyModal');
  const buttonClose = document.getElementsByClassName('modalClose')[0];

  //ボタンがクリックされた時
  buttonOpen.addEventListener('click', modalOpen);
  function modalOpen() {
    console.log("aaa");
    modal.style.display = 'block';
  };

  //戻るがクリックされた時
  buttonClose.addEventListener('click', modalClose);
  function modalClose() {
    modal.style.display = 'none';
  };

  //モーダルコンテンツ以外がクリックされた時
  addEventListener('click', outsideClose);
  function outsideClose(e) {
    if (e.target == modal) {
      modal.style.display = 'none';
    };
  };
}, false);