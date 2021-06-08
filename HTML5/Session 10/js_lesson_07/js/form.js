$(function () {
	// body...
	var $newItemButton = $('#newItemButton');
	var $newUtemForm   = $('#newItemForm');
	var $textInput     = $('input:text');

	$newItemButton.show();
	$newItemForm.hide();

	$('#showForm').on('click',function(){
		$newItemButton.hide();
		$newItemForm.show();
	});

	$newItemForm.on('submit',function(e){
		e.preventDefault();
		var newText = $textInput.val();
		$('li:last').after('<li>' + newText + '</ li>');
		$newItemForm.hide();
		$newItemButton.show();
		$textInput.val('');

	});
});