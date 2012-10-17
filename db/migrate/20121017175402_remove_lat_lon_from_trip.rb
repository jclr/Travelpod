class RemoveLatLonFromTrip < ActiveRecord::Migration
  def up
    remove_column :trips, :lat
    remove_column :trips, :lon
  end

  def down
    add_column :trips, :lon, :decimal
    add_column :trips, :lat, :decimal
  end
end
