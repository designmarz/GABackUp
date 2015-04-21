var express = require("express"),
	app = express(),
	redis = require("redis"),
	client = redis.createClient(),
	methodOverride = require("method-override"),
	bodyParser = require("body-parser");

// middlewares
app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({extended: true}));
app.use(methodOverride('_method'));

//static files
app.use(express.static(__dirname + '/public'));

// routes

// index route
app.get('/', function(req, res) {
	client.LRANGE('students', 0, -1, function(err, students){
		res.render('index', {students: students});

	});
});

// post route
app.post('/create', function(req, res){
	console.log(req.body)
	// if (client.SISMEMBER('students', req.body) === 1){
	client.LPUSH('students', req.body.student)
	// }
	res.redirect('/')
});

// edit route
app.post('/edit', function(req, res){
console.log('edit clicked')
// need to figure out how to use SET??? some update method
});

// delete route
app.delete('/remove/:student', function(req, res){
	client.lrange('students', 0, -1, function(err, students){
		students.forEach(function(student){
		if (student === req.params.student){
			console.log(students)
			client.LREM('students', 1, student)
			res.redirect('/')
			}
		});
	});
});


app.delete('/remove', function(req, res){
			client.DEL('students')
			res.redirect('/')
});



app.listen(3000, function(){
console.log('Starting Server')
});