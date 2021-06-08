function checkUsername() {
	// body...
	var elMsg = document.getElementById('feedback');
	var elUsername = document.getElementById('username');
	if (elUsername.value.lenght < 5) {
		elMsg.textContent = 'Username must be 5 characters or more';
	} else{
		elMsg.textContent = '';
	}
}