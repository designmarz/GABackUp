class ActorsController < ApplicationController
<<<<<<< HEAD
=======
  before_action :find_actor, only: [:edit, :show, :update, :destroy, :add_movie, :remove_movie]

>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
  def index
    @actors = Actor.all
  end

  def create
<<<<<<< HEAD
=======
<<<<<<< HEAD
    form_data = params.require(:actor).permit(:name)
    Actor.create form_data
=======
    binding.pry
>>>>>>> master
    Actor.create actor_params
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
    redirect_to actors_path
  end

  def new
    @actor = Actor.new
  end

<<<<<<< HEAD
  def show
    @actor = Actor.find(params[:id])
  end

  def edit
    @actor = Actor.find(params[:id])
  end

  def update
    form_data = params.require(:actor).permit(:name)
    actor = Actor.find(params[:id])
    actor.update_attributes form_data
    redirect_to actor_path(actor)
  end

  def add_movie
    actor = Actor.find(params[:id])
    movie = Movie.find(params[:movie_id])
    actor.movies << movie
    redirect_to actor_path(actor)
  end

  def remove_movie
    actor = Actor.find(params[:id])
    movie = Movie.find(params[:movie_id])
    actor.movies.delete(movie)
    redirect_to actor_path(actor)
  end


  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    redirect_to actors_path
  end

  private 
    def actor_params
      params.require(:actor).permit(:name)
    end
=======
  def edit
    @actor = Actor.find(params[:id])
  end

  def show
    @movies = Movie.all - @actor.movies
    @commentable = @actor
    @comments = @commentable.comments
    @comment = Comment.new
  end

  def update
    @actor.update_attributes actor_params
    redirect_to @actor
  end

  def destroy
    @actor.destroy
    redirect_to actors_path
  end

  def add_movie
    @actor = Actor.find(params[:id])
    movie = Movie.find(movie_params[:id])
    unless @actor.movies.include? movie
      @actor.movies << movie
    end
    redirect_to @actor
  end

  def remove_movie
    movie = Movie.find(params[:movie_id])
    @actor.movies.delete(movie)
    redirect_to @actor
  end

  private
  def movie_params
    params.require(:movie).permit(:id, :title, :year)
  end

  def actor_params
    params.require(:actor).permit(:id, :name)
  end

  def find_actor
    @actor = Actor.find(params[:id])
  end
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
end
