class Trip < ActiveRecord::Base
  belongs_to :user
  attr_accessible :city, :date, :lat, :lon, :post, :user_id, :user

    def user_name
        user.name if user
    end

    def user_id
        user.id if user
    end
end
