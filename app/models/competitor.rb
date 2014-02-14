# This represents a competitor to a location
class Competitor < ActiveRecord::Base
  belongs_to :location

  validates :name, presence: true
  validates :url, presence: true
  validates :image_url, presence: true
  validates :category, presence: true
  validates :review_count, presence: true
end