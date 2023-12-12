// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Import jQuery/JS Cookie
import jquery from "jquery"
import * as cookies from "js-cookie"

// Window
window.jQuery = jquery
window.$ = jquery
window.Cookies = cookies.default

// Publish Assignment
$(document).on("click", "[data-book-id]", function (event) {

  var button = $(this);
  var book_id = button.attr("data-book-id");
  var token = $("meta[name='csrf-token']").attr("content");

  var form_data = {
    "authenticity_token" : token,
    "selection" : {
      "book_id" : book_id,
    }
  }

  $.ajax({
    url: "/selections",
    method: "post",
    data: form_data,
    dataType: "JSON",
    success: function (data) {
      button.prop("disabled", true);
      button.text("Added!");
    }
  });
});


