class RemoveLatLonFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :lat
    remove_column :users, :lon
  end

  def down
    add_column :users, :lon, :decimal
    add_column :users, :lat, :decimal
  end
end
