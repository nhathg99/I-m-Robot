function getArea(width,height){
	var el = document.getElementById('message');
	el.textContent = "Area is " + width*height;
}

getArea(3,5);