// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


function showGradList()
{
	//val = document.forms[0].honours;
	val = document.getElementById('honours');
	//alert(val.value);
	if(val.value=="1")
{
document.getElementById("d1").hidden=true;
document.getElementById("d2").hidden=false;
}
else
{
document.getElementById("d2").hidden=true;
document.getElementById("d1").hidden=false;
}
}

