class MoviesController < ApplicationController
  def index
    all_movies = Movie.where(user_id: current_user.id)
    @movies = all_movies.order(:title)
  end

  def new
    puts params[:q]
    @result = Movie.search(params[:q])
    @movie = current_user.movies.new
  end

  def create
    movie = params.require(:movie)
            .permit(:title, :genre, :year, :synopsis, :pic_url)
    current_user.movies.create(movie)
    redirect_to '/movies'
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update_attributes(params.require(:movie)
                             .permit(:title, :genre, :year,
                                     :synopsis, :pic_url))
    redirect_to movie_path
  end

  def destroy
    Movie.find(params[:id]).destroy
    redirect_to '/movies'
  end
end
