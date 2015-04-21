$(document).ready(function() {
 

  $("form").on("submit", function(e){

	var movie = $("input").val();
	$.getJSON("http://www.omdbapi.com/?t="+movie, function (data) {
    if (data.Error === "Movie not found!") {
       $('.movtitle ul').empty();
       $('.movie').css('background-image', 'none');
           $('.movtitle ul').append('<h1>Movie not found!</h1>');
            e.preventDefault();
    }
    else  {
   	console.log(data);
    $('.movtitle ul').empty();
    $('.movtitle ul').append('<li>' + '<a href="'+data.Poster+'">'+data.Title+ '</a>' +
    '</li><li>' + data.Year + '</li><li>' + data.Rated + 
    '</li><li>' + data.Released+ '</li><li>'+ data.Runtime+'</li>' );
$('.movie').css('background-image', 'url(' + data.Poster+ ')');
  e.preventDefault();
}
});
	e.preventDefault();
	});


 



});


