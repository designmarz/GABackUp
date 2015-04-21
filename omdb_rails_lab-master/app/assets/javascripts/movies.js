$(document).ready(function () {
  $("form").on("submit", function (event) {
  	console.log("preventDefault")
    event.preventDefault();
    var searchTerm = event.target.title.value;
    $.getJSON("/", {title: searchTerm}, function (data) {
    	console.log("getJSON")
      var list = $("ul").empty();
      data.forEach(function (movie) {
        var item = $("<li>").text(movie.Title);
        list.append(item);
      });
    });
  });
})

// // $(document).ready(function() {
// // 	$("form").on("submit", function(event) {
// // 		event.preventDefault();
// // 		var searchTerm = event.target.search_term.value;
// // 		$.getJSON("/movies.json",{search_term: searchTerm}, function(data){
// // 			var list = $("ul").empty();
// // 			data.forEach(function (movie) {
// // 				var item = $("<li>").text(movie.Title);
// // 			});
// // 		});
// // 	});
// // })