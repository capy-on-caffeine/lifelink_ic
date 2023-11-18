window.addEventListener('scroll', function() {
    var navbar = document.querySelector('.navbar');
    if (window.scrollY >= 50) {
      navbar.style.background = 'linear-gradient(90deg, hsl(0, 0%, 98%) 0%, hsl(0, 0%, 98%) 20%, hsl(0, 0%, 100%) 20%, hsl(0, 0%, 100%) 100%)';
    } else {
      navbar.style.background = 'transparent';
    }
});

const detailUpdateButton = document.getElementById('updateBtn');
detailUpdateButton.addEventListener('click', function() {
  var wrapper = document.querySelector('.modal-wrapper');
  wrapper.style.display = 'block';
  const w = document.getElementById('wrap');
  w.style.overflow = 'hidden';
});

const cancelButton = document.getElementById('cancelBtn');
cancelButton.addEventListener('click', function() {
  var wrapper = document.querySelector('.modal-wrapper');
  wrapper.style.display = 'none';
  const w = document.getElementById('wrap');
  w.style.overflow = 'auto';
});

const dbutton = document.getElementById('dashboardBtn');
const fbutton = document.getElementById('findbloodBtn');
var dashboard = document.querySelector('.dashboard');
var fb = document.querySelector('.findblood-screen');

dbutton.addEventListener('click', function() {
  dashboard.style.display = 'block';
  fb.style.display = 'none';
  dbutton.classList.toggle('active-btn');// faulty when one btn is multiple clicked
  fbutton.classList.toggle('active-btn');// faulty when one btn is multiple clicked
});

fbutton.addEventListener('click', function() {
  dashboard.style.display = 'none';
  fb.style.display = 'block';
  dbutton.classList.toggle('active-btn');// faulty when one btn is multiple clicked
  fbutton.classList.toggle('active-btn');// faulty when one btn is multiple clicked
});


var bloodTypes = {
  "a+": false,
  "b+": false,
  "ab+": false,
  "o+": false,
  "a-": false,
  "b-": false,
  "ab-": false,
  "o-": false
}

const requestBloodElems = document.querySelectorAll('.request-blood');
requestBloodElems.forEach(function(element) {
  element.addEventListener('click', function() {
    toggleSelection(element);
  });
});

function toggleSelection(element) {
  element.classList.toggle('request-blood-selected');
  bloodTypes[element.id] = !bloodTypes[element.id];
}