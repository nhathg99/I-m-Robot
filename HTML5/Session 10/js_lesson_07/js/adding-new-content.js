$(function(){
	$('ul').before('<p class = "notice">Just updated</p>');
	$('li.hot').prepend('+ ');
	var $newListItem = $('<li><em>gleten-free</em> soy sauce </li>');
	$('li:last').after($newListItem);
});