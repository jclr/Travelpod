class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.text :post
      t.decimal :lat
      t.decimal :lon
      t.date :date
      t.string :city

      t.timestamps
    end
  end
end
