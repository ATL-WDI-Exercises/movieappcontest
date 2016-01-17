class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    movie = params.require(:movie).permit(:title, :genre, :year, :synopsis, :picture)
    Movie.create(movie)
    redirect_to movies_path
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update_attributes(params.require(:movie).permit(:title, :genre, :year, :synopsis, :picture))
    redirect_to movies_path
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

  # def favorites

  # end

end
