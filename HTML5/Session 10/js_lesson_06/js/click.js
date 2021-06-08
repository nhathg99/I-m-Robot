var msg = '<div class = \"header\"><a id=\"close\" href="#">close X </ a></ div>';
msg += '<div><h2>System Maintenance</ h2>';
msg += 'Our servers are being updated between 3 and 4 a.m. ';
msg += 'During this time, there may be minor disruption to service.</div>';


var elNote = document.creatElement('div');
elNote.setAttribute('id','note');
elNote.innerHTML = msg;
document.body.appendChild(elNote);

function dismissNote() {
	// body...
	document.body.removeChild(elNote);
}

var elClose = document.getElementById('close');
elClose.addEventListener('click',dismissNote,false);