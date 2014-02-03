class Store < ActiveRecord::Base
  has_many :competitions
  has_many :cooperations
  has_many :startups, through: :competitions
  has_many :startups, through: :cooperations
end
