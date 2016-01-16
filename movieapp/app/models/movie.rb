class Movie < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :genre, presence: true
  validates :year, presence: true
  validates :synopsis, presence: true
end
