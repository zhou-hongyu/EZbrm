class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :user, :name, :category
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  belongs_to :user
end
