//= require rails-ujs
//= require activestorage
//= require jquery3
//= require popper
//= require bootstrap

var toggled = 0;
function toggle(){

  if(toggled==0){
    document.getElementById("arrow").style.transform = 'rotate(-180deg)';
    document.getElementById("menu").style.left = '0';
    toggled=1;
  }
  else {
    document.getElementById("arrow").style.transform = 'rotate(0deg)';
    document.getElementById("menu").style.left = '-100px';
    toggled=0;
  }
}
