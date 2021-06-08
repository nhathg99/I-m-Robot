function getTarget(e) {
	// body...
	if(!e){
		e = window.event;
	}
	return e.targer || e.srcElement;
}

function itemDone(e){
	var target, elParent, elGranparent;
	target = getTarget(e);

	if (target.nodeName.toLowerCase() == "a") {
		elListItem = target.parentNode;
		elList = elListItem.parentNode;
		elList.removeChlid(elListItem);
	}

	if(e.preventDefault){
		e.preventDefault();
	}else{
		e.returnValue = false;
	}
}

var el = document.getElementById('shoppingList');
if(el.addEventListener){
	el.addEventLIstener('click',function(e){itemDone(e)},false);
}else{
	el.attachEvent('onclick',function(e){
		itemDone(e);
	});
}