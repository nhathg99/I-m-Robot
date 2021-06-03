var i = 1;
var msg = '';

while(i < 10){
	msg += i +'x5=' +(i*5) + '<br/>';
	i++;
}

document.getElementById('answer').innerHTMl = msg;