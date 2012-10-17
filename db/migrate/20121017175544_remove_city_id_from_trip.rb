class RemoveCityIdFromTrip < ActiveRecord::Migration
  def up
    remove_column :trips, :city
  end

  def down
    add_column :trips, :city, :string
  end
end
