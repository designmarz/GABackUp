require 'pry'
require 'sinatra'
require "better_errors"

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

# this will store your users
users = []

# this will store an id to user for your users
# you'll need to increment it every time you add
# a new user, but don't decrement it
id = 1

# routes to implement:
#
# GET / - show all users
get '/' do
  @users = users
  erb :index
end

# GET /users/new - display a form for making a new user
get  '/users/new' do
  @users = users
    erb :new
    # redirect '/'
end
# POST /users - create a user based on params from form
post '/users' do
  users.push name: params[:name], id:id 
  id+=1
  redirect '/'
end
# GET /users/:id - show a user's info by their id, this should display the info in a form
get '/users/:id' do
  @user = users[params[:id].to_i - 1]
  erb :editUser
end

# PUT /users/:id - update a user's info based on the form from GET /users/:id
put '/users/:id'  do
  @user = users[params[:id].to_i - 1]
  @user[:name]=params[:name]
  redirect '/'
end
# DELETE /users/:id - delete a user by their id
delete '/users/:id' do
  users.each_with_index do |user, index|
    if(params[:id].to_i == user[:id])   
      users.delete_at(index.to_i)
    end
  end
  redirect '/'
end



# delete '/users/:id'  do
#   @user = users[params[:id].to_i - 1]
#   users.delete(@user[params[:id]])
#   redirect '/'
# end



