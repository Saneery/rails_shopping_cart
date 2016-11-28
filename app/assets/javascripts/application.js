// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
function total_price(product_id) {
    var ingredientDiv = document.querySelectorAll("#product_" + product_id + " .ingredient");
    var total_sum = 0;
    for (var i = 0; i < ingredientDiv.length; i++) {
        ing_inputs = ingredientDiv[i].querySelectorAll("input");
        total_sum += ing_inputs[0].value * ing_inputs[2].value;
    }
    var product_price = document.getElementById("product_price_" + product_id).value;
    total_sum += parseFloat(product_price);
    var span_element = document.getElementById("total_price_" + product_id);
    span_element.innerHTML = total_sum.toFixed(2) + " руб.";
}