var sinhvien ={
	name : 'Quay',
	rooms : 40,
	booked : 25,
	checkAvailability : function(){
		return this rooms - this.booked;
	}
};

var elName = document.getElementById('sinhvienName');
elName.textContent = sinhvien.name;

var elRooms = document.getElementById('rooms');
elRooms.textContent = sinhvien.checkAvailability();