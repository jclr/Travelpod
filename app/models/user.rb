class User < ActiveRecord::Base
  has_many :trips
  belongs_to :city
  attr_accessible :name, :password, :city_id
  validates :name, :city_id, :password, presence: true

  def city_name
    city.name if city
  end
end
