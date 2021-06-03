var list  = document.getElementById('ul');

var newItemLast = document.createElement('li');
var newTextLast = document.createTextNode('cream');
newItemLast.appendChild(newTextLast);
list.appendChild(newItemLast);

var newItemFirst = document.createElement('li');
var newTextFirst = document.createTextNode('Kate');
newItemFirst.appendChild(newTextFirst);
list.insertBefore(newItemFirst,list.firstChild);

var listItems = document.querySelectorAll('li');
var i;
for(i=0;i<listItems;i++){
listItems[i].className = 'cool';
}
var heading = document.querySelector('h2');
var headingText = heading.firstChild.nodeValue;
var totalItems = listItems.length;
var newHeading = headingText + '<span>' + totalItems + '</span>';
heading.innerHTML = newHeading;