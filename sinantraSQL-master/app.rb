require 'sinatra'
require 'better_errors'
require 'pry'
require 'pg'
# require 'shotgun'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

set :conn, PG.connect(dbname: 'sinatrasql')

before do
  @conn = settings.conn
end
settings.conn

#ROOT ROUTE
get '/' do 
  redirect '/authors'
end

#GET index
get '/authors' do
  authors = []
  @conn.exec("SELECT * FROM authors") do |result|
    result.each do |author|
      authors << author
    end
  end
  @authors = authors
  erb :index
end 

#NEW author 
get '/authors/new' do
  erb :new
end

#SHOW author by ID
get '/authors/:id' do
  id = params[:id].to_i
  author = @conn.exec("SELECT * FROM authors WHERE id = $1", [id])
  @author = author[0]
  erb :show
end

#EDIT author by ID
get '/authors/:id/edit' do
  id = params[:id].to_i
  author = @conn.exec("SELECT * FROM authors WHERE id = $1", [id])
  @author = author[0]
  erb :edit
end

#CREATE 
post '/authors' do
  @conn.exec("INSERT INTO authors (name) VALUES ($1)", [params[:name]])
  redirect '/authors'
end

#UPDATE
put '/authors/:id' do
  id = params[:id].to_i
  name = params[:name].to_s
  @conn.exec("UPDATE authors SET name = $1 WHERE id = $2", [name, id])
  redirect '/authors'
end

#DESTROY
delete '/authors/:id' do
  id = params[:id].to_i
  @conn.exec("DELETE FROM authors WHERE id = $1", [id])
  redirect '/authors'
end