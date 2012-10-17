class City < ActiveRecord::Base
  has_many :trips
  has_many :users
  attr_accessible :lat, :lon, :name
  validates :lat, :lon, :name, presence: true
end
