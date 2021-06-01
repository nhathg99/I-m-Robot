var saying = 'Home Sweet Home';


var msg = '<h2>length</h2><p>' + saying.length + '</p>';


msg += '<h2>uppercase</h2> <p>' +saying.toUppercase +'</p>';

msg += '<h2>lowercase</h2> <p>' +saying.toLowercase +'</p>';

msg += '<h2>character index</h2> <p>' +saying.chaAt(12) +'</p>';

msg += '<h2>first ee</h2> <p>' +saying.indexOf('ee')+'</p>';

msg += '<h2>last e</h2> <p>' +saying.lastIndexOf('e') +'</p>';

msg += '<h2>character index: 8-14</h2> <p>' +saying.substring(8, 14) +'</p>';

msg += '<h2>replace</h2> <p>' +saying.replace('me','w') +'</p>';

var el = document.getElementById('info');

el.innerHTML = msg;

