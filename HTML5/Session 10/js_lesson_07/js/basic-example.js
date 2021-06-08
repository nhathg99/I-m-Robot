$(':header').addClass('headLine');
$('li:lt(3)').hide().fadeIn(1500);
$('li').on('click',function(){
	$(this).remove();
});