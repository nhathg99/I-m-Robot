((function )
{
	var hotel = {
		name: 'Park',
		roomRate: 240,
		discount: 15,
		offerPrice: function(){
			var offerRate = this.roomRate * ((100 - this.discount) /100);
			return offerRate;
		}
	};

	var hotelName,roomRate, specialRate;
	hotelName = document.getElementById('hotelName');
	roomRate = document.getElementById('roomRate');
	specialRate = document.getElementById('specialRate');

	var expiryMsg;
	var today;
	var elEnds;

	function offerExpires(today) {
		// body...
		var weekFromToday, day , date, month, year, dayNames, monthNames;

		weekFromToday = new Date(today.getTime() + 7*24*60*60*1000);
		dayNames = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
		monthNames = ['January','February','March','April','May','June','July','August','September','October','November','December'];

		day = dayNames[weekFromToday.getDay()];

		date = weekFromToday.getDate();

		month = monthNames[weekFromToday.getMonth()];
		year = weekFromToday.getFullYear();

		expiryMsg = 'Offer expires next';
		expiryMsg += day + '<br />(' + date' '+month+''+year+')';
		return expiresMsg;
	}
	today = new Date();
	elEnds = document.getElementById('offerEnds');
	elEnds.innerHTML = offerExpires(today);

}());