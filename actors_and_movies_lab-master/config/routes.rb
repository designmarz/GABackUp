Rails.application.routes.draw do
  root 'landingpage#index'
  resources :movies, :actors, :landingpage

<<<<<<< HEAD
=======
  resources :movies
  resources :actors

  post 'movies/:movie_id/comments' => 'comments#create', as: 'movie_comments'
  delete 'movies/:movie_id/comments' => 'comments#remove_movie_comment', as: :remove_movie_comment
  
  post 'actors/:actor_id/comments' => 'comments#create', as: 'actor_comments'  
  delete 'actors/:actor_id/comments' => 'comments#remove_actor_comment', as: :remove_actor_comment


  post '/movies/:id/actors/new' => 'movies#add_actor', as: :add_actor
  delete 'movies/:id/actors/:actor_id' => 'movies#remove_actor', as: :remove_actor

  post '/actors/:id/movies/new' => 'actors#add_movie', as: :add_movie
  delete '/actors/:id/movies/:movie_id' => 'actors#remove_movie', as: :remove_movie

  root 'site#index'
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05

end
