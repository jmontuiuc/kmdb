class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
  end

  def show
    # Your code goes here
    # Use the information after the slash in the URL to look up the movie with the corresponding ID number
    # Store the movie in the @movie instance variable so the view can format it
    movieid = params[:id]
    movieinfo = Movie.find_by({:id => movieid})
    @movie = movieinfo
  end
end
