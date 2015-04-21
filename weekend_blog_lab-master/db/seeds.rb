x= Author.create(first_name:"Nick", last_name: "Marazzo", age: 32)
y = Post.create(title: "Nick's Post", body: "This is my blog post", category: "Raving")
y.author = x
x.posts << y

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
