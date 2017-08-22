console.log('It works!');

var photo = document.getElementById('lizard-photo');
photo.style.border = "3px dashed green";
photo.style.width = '50%';
photo.style.height = 'auto';

var list = document.getElementById('list-of-reasons');
list.insertAdjacentHTML('afterbegin','<li>good at catching flies</li>');
list.insertAdjacentHTML('afterbegin','<li>friendly</li>');

var font_color = document.getElementById('list-of-reasons');
font_color.style.color = 'blue';

var background = document.getElementById('about-my-pet')
background.style.background = 'pink';

function hover() {
var hoverover = document.getElementById('list-of-reasons');
hoverover.style.background = "teal";
}

var hoverover = document.getElementById('list-of-reasons');
hoverover.addEventListener('mouseover', hover);



