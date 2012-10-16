class Trip < ActiveRecord::Base
  belongs_to :user
  attr_accessible :city, :date, :lat, :lon, :post, :user
end
