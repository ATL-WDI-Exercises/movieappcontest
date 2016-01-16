class Movie < ActiveRecord::Base
  validates :title, presence: true
  validates :genre, presence: true
  validates :year, presence: true
  validates :synopsis, presence: true
end
