class MoviesController < ApplicationController
  def index
  end

  def create
    @movie = Movie.new movie_params
    mt = @movie.title
    request = Typhoeus.get("www.omdbapi.com", :params => {:s => mt})
    stuff = JSON.parse(request.body)
    @stuff = stuff["Search"]
    binding.pry
    render :index
  end

  def show   
  end

private 
  def movie_params
    params.require(:movie).permit(:title)
  end

end