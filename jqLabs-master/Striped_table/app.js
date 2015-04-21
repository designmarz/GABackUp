$(document).ready(function() {
	$("form").on("submit", function(e){
		var newColor = $("input[type=text]").val();
		$("tr:even td").css("background-color", newColor);
		e.preventDefault();
	}
	);
});