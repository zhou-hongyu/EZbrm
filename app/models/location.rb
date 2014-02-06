# This represents your startup
class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :category, :name
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  belongs_to :user
  has_many :competitors

  # Add some validations here
end
