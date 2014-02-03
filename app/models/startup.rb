class Startup < ActiveRecord::Base
  belongs_to :user
  has_many :competitions
  has_many :cooperations
  has_many :stores, through: :competitions :cooperations
end
