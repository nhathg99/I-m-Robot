var noteInput, noteName, textEntered, target;

noteName = document.getElementById('noteName');
noteName = document.getElementById('noteName');

function writeLabel(e){
	if (!e){
		e = window.event;
	}
	target = e.target || e.srcElment;
	textEntered = target.value;
	noteName.textContent = textEntered;


function recorderControls(e){
	if (!e){
		e = window.event;
	}
	target = e.target || e.srcElement;
	if(e.preventDefault){
		e.preventDefault();
	}else {
		e.returnValue = false;
	}

}
switch(target.getAttribute('data-state')){
	case 'record':
	record(target);
	break;
	case 'stop':
	record(target);
	break;
	}
}
function record(target){
	target.setAttribute('data-state','stop');
	target.textContent = 'record';
}
if(document.addEventListener){
	document.addEventListener('click',function(e){
		recorderControls(e);
	},false);
	noteInput.addEventListener('input',writeLabel,false);
}
else{
	document.attachEvent('onclick',function(e){
		recorderControls(e);
	});
	noteInput.attachEvent('onkeyup',writeLabel);
}