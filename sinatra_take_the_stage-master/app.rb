require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end
	
# our application's routes
get '/hi' do
	"<h3>Hi, I am Frank! <br>What's up Nick?</h3>"
	end

# return quotes matching a tag
# get '/quote/:tag' do
# 	raise "tag must not be anything but 'life'" if params[:tag] != 'life'
# 	"You've requested a quote for tag: '#{params[:tag]}'"
# end

get '/quote/:tag' do
	quotes = {
	:alcohol => [
"Alcohol may be man\'s worst enemy, but the bible says love your enemy.", 
"I feel sorry for people that don't drink, because when they wake up in the morning, that is the best they are going to feel all day"
], 
:life => [
"I'm gonna live till I die",
"The big lesson in life, baby, is never be scared of anyone or anything.",
"Don\'t hide your scars. They make you who you are",
"You only live once, and the wya I live, once is enough",
"Ya gotta love livin\', pally, cus dyin\'s a pain in the ass!",
"You only go around once, but if you play your cards right, once is enough"
]
}
[	
	"<h2>Quotes about drinking '#{params[:tag]}'</h2>",
	"<ul>"].concat(
quotes[params[:tag].to_sym].map do |quote|

	"<li><h3>#{quote}</h3></li>"
	end
).push("</ul>")
end



# default /quote route
get '/quote' do 
		"The best is yet to come and won\'t that be fine."
end

# alcohol = Hash.new("boozy")

# alcohol["a"] = "Alcohol may be man\'s worst enemy, but the bible says love your enemy." 
# alcohol["b"] = "I feel sorry for people that don't drink, because when they wake up in the morning, that is the best they are going to feel all day"


# life = Hash.new("life stuffz")
# life["a"] 