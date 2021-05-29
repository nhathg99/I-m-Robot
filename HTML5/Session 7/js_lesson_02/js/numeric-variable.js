var price;
var quantity;
var total;

price = 5;
quantity = 20;
total = price + quantity;

var el = document.getElementById('cost');
el.textContent = '$' + total;