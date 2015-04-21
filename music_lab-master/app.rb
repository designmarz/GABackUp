require 'sinatra'
require 'sinatra/activerecord'
require 'rake'
require './models/artist'
require 'better_errors'
require 'pry'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

# /artists - reads all artists
get '/' do
 redirect '/artists'
end

get '/artists' do
  pageTitle = 'Artist List'
  @pageTitle = pageTitle
  @artists = Artist.all
  erb :index
end

# /artists/new - display a form to create a new artist
get '/artists/new' do
  pageTitle = 'Add a New Artist!'
  @pageTitle = pageTitle
  erb :new
end

# /artists/:id - reads a single artist
get '/artists/:id' do
  pageTitle = 'all about that'
  @pageTitle = pageTitle
  @artist = Artist.find (params[:id])
  erb :show
end
# /artists/:id/edit - display a form to edit an artist
get '/artists/:id/edit' do
  pageTitle = 'edit Artist'
  @pageTitle = pageTitle
  @artist = Artist.find (params[:id])
  erb :edit
end

# POST
# /artists - create a new artist in the database
post '/artists' do
  Artist.create ({:name => params[:artist_name]})
  redirect '/artists'
end
# PUT
# /artists/:id - update the artist with the given id.
put '/artists/:id' do
  id = params[:id]
  artist = Artist.find(id)
  artist.name = params[:artist_name]
  artist.save
  redirect "/artists/#{id}"
end
# DELETE
# /artists/:id - remove an artist from the database.
delete '/artists/:id' do
  artist = Artist.find(params[:id])
  artist.destroy
  redirect '/artists'
end
