var sx = document.getElementById('sx');
var sy = document.getElementById('sy');
var px = document.getElementById('px');
var py = document.getElementById('py');
var cx = document.getElementById('cx');
var cy = document.getElementById('cy');

function showPosition(event) {
	// body...
	sx.value = event.ScreenX;
	sy.value = event.ScreenY;
	px.value = event.pageX;
	py.value = event.pageY;
	cx.value = event.clientX;
	cy.value = event.clientY;
}
var el = document.getElementById('body');
eladdEventListener('mosemove',showPosition,false);