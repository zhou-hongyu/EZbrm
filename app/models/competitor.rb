# This represents a competitor to a location
class Competitor < ActiveRecord::Base
  belongs_to :location
end