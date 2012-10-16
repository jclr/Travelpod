class User < ActiveRecord::Base
  has_many :trips
  attr_accessible :lat, :lon, :name, :password
end
