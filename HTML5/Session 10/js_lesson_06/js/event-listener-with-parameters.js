var elUsername = document.getElementById('username');
var elMsg      = document.getElementById('feedback');

function checkUsername(minlength) {
	// body...
	if(elUsername.value.length < minlength){
		elMsg.innerHTML = 'Username must be' + minlength + ' character or more';		
	} else {
		elMsg.innerHTML=''
	}	
}

elUsername.addEventListener('blur', function(){
	checkUsername(5);
},false);