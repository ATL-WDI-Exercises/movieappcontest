class FavoritesController < ApplicationController


  def index
    @user_id = current_user.id.to_s
    @favorites = Favorite.where(user_id: @user_id)
    @movies = Movie.all
end


  def show
    @favorite = Favorite.find(params[:id])
    @movies = Movie.all
  end


  def new
    @movie = Movie.find(params[:id])
    @favorite = Favorite.new
    @favorite.user_id = User.find(current_user).id
    @favorite.movie_id = Movie.find(params[:id]).id
    @favorite.save
  end


  def create

  end

    def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to '/users/favorites'
  end

end
