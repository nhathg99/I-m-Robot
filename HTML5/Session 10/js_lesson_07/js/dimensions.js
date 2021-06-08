$(function () {
	// body...
	var listHeight = $('#page').height();
	
	$('ul').append('<p>Height: ' + listHeight + 'px</ p>');
	$('ul').width('50%');
	$('li#one').width(125);
	$('li#two').width('75%');	
});