$(document).ready(function() {
  
 // add's new items to you list 
  $("form").on("submit", function(e){
	var newToDo = $("input").first().val();
	var button = "<button class='done'>X</button>";
	$("ul").append( "<li>"+newToDo+"   "+button +"</li>");
		$("input[type=text]").val('');
	e.preventDefault();
	});
 
// $('body').on("click", "button",function(e){
//   	$(this).addClass("liLine");
//   	});

$('ul').on('click', 'button', function(e) {
    $(this).parent().remove();
});

// event handler for strike-thourgh
 $('body').on("click", "li",function(e){
  	$(this).toggleClass("liLine");
  	});


});	