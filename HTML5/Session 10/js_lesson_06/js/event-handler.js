function checkUsername(argument) {
	var elMsg = document.getElementById('feedback');
	if(this.value.length< 5){
		elMsg.textContent = 'username must be 5 character or more';
	} else {
		elMsg.textContent = '';
	}
}


var elUsername = document.getElementById('username');
elUsername.onblur = checkUsername;