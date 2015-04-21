## Rails CRUD Lab

For tonight's lab we would like you to build a Rails application that has full CRUD on one resource - puppies!! 

![Puppy](http://graphicsheat.com/wp-content/uploads/2013/07/tumblr_lo4dgsKxWu1qc7r8vo1_500.jpg)

## Model + Migration

First start by creating a new Rails application using `rails new` and don't forget the `-TBd postgresql` so that we can add `pry-rails` and then run `bundle install`

Start by generating your model using `rails g model` and pending migration and make sure your migration contains the following: 

- Every puppy should have a name, age and breed. 

- Then ensure that your model validates the following:

	- Ensure that every puppy has a name, age and breed  
	- The age of the puppy must be a number
	- The name of the puppy should be at least 3 characters
	
## Controller + Views

Once you have tested your models and validations in Rails Console, generate your controller and views using `rails g controller`. Remember, models in the singular, controllers in the plural!

You **MUST** use Rails forms and helpers when building your application! This means there should not be a single `<form>` or `<a>` tag in any of your views!

Make sure that your views display error messages if there is a problem creating or updating a puppy.

## Routes

For example, `/puppies` should return something like this:

![puppies](http://images4.fanpop.com/image/photos/22000000/Cute-Puppies-puppies-22040946-1280-800.jpg)

Whereas `/puppies/:id` should return something like this:

![Puppy](http://stuffkit.com/wp-content/uploads/2013/02/Cute-Puppy.jpg)

Your application should have 7 RESTful routes for puppies as well as a root route.



## Bonus

Take a look at the notes for [tomorrow](https://github.com/wdi-sf-jan/notes/tree/master/rails_CRUD_refactor) and see if you can refactor some of your code using resources, the prefix/path, flash messages and bootswatch! Don't worry, we will cover all of this tomorrow. 
	
### Need some inspiration?? [Head over here](https://www.google.com/search?site=&tbm=isch&source=hp&biw=1002&bih=739&q=puppy&oq=puppy&gs_l=img.3..0l10.914.1402.0.1526.5.5.0.0.0.0.73.307.5.5.0.msedr...0...1ac.1.62.img..0.5.306.r4EpNHzQFtY#tbm=isch&q=cute+puppy&imgdii=_)
