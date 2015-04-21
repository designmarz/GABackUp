class Actor < ActiveRecord::Base
<<<<<<< HEAD
  has_many :movie_actors
  has_many :movies, through: :movie_actors
=======
  has_many :actors_movies, dependent: :destroy
  has_many :movies, through: :actors_movies
<<<<<<< HEAD
  has_many :comments, :as => :commentable
=======
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
>>>>>>> master
end
