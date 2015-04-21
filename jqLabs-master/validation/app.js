$(document).ready(function() {
// hide the thanks div for later use//
$( "#thanks" ).hide();
// submit function for thanks animation //
$("body").on("submit", function(event){
	var passCheck = $("input[type=password]").val().length;
	event.preventDefault();	
	if (passCheck < 6 ) {
		alert("Your Pasword is too short!");
		$("input[type=password]").val('');
	}
	if (passCheck >= 6) {
		$( "#frame" ).fadeOut( "slow", function() {
			$( "#thanks" ).fadeIn("slow");
});
	}	 
});
});