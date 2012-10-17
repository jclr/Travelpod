class Trip < ActiveRecord::Base
  belongs_to :user
  belongs_to :city
  attr_accessible :city, :date, :lat, :lon, :post, :user_id, :user
  validates :city, :post, :user_id, presence: true

    def user_name
        user.name if user
    end

    def city_name
        city.name if city
    end
end
