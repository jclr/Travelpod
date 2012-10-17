class User < ActiveRecord::Base
  has_many :trips
  belongs_to :city
  attr_accessible :lat, :lon, :name, :password
  validates :password, presence: true

  def city_name
    city.name if city
  end
end
