class Trip < ActiveRecord::Base
  belongs_to :user
  belongs_to :city
  attr_accessible :city_id, :date, :post, :user_id, :user
  validates :city, :post, :user_id, :date, presence: true

  scope :current_user_trips, lambda { |user|
    where('user_id = ?', user.id)
  }

    def user_name
        user.name if user
    end

    def city_name
        city.name if city
    end
end
