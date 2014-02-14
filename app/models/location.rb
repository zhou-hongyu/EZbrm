# This represents your startup
class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :category, :name
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  belongs_to :user
  has_many :competitors

  validates :address, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :category, presence: true
  validates :name, presence: true

  # Add some validations here
  def get_info
    client = Yelp::Client.new
    category = self.category
    latitude = self.latitude
    longitude = self.longitude

    request = Yelp::V2::Search::Request::GeoPoint.new(
             :term => category,
             :latitude => latitude,
             :longitude => longitude)
    response = client.search(request)
    @stores = response["businesses"]

    @stores.each do |store|

      @competitor = Competitor.new
      @competitor.name = store["name"]
      @competitor.review_count = store["review_count"]
      @competitor.url = store["url"]
      @competitor.image_url = store["image_url"]
      @competitor.category = store["categories"][0][0]
      @competitor.save!
      self.competitors << @competitor
    end
  end
end
