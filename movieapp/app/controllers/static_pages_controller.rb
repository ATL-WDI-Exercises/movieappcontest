class StaticPagesController < ApplicationController
  def home
  end

  def explore
    @movies = Movie.all
  end
end
