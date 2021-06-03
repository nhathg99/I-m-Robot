var i = 1;
var msg = '';

do{
	msg += i +'x5=' +(i*5) + '<br/>';
	i++;
} while(i<=10);

document.getElementByUd('answer').innerHTML = msg;