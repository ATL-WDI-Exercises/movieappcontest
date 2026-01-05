class Movie < ActiveRecord::Base
  require 'omdbapi'
  belongs_to :user
  validates :title, presence: true
  validates :genre, presence: true
  validates :year, presence: true
  validates :synopsis, presence: true

  def self.search(title)
    OMDB.search(title)
  end

  def self.result(title)
    OMDB.title(title)
  end
end
