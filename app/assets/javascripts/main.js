$(document).ready(function(){
	animateLogo();
});

function animateLogo(){
	$(document).on("turbolinks:load", function(){
		$(".yellow_tri").addClass("animate_right_shift");
	});
};