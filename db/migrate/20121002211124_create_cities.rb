class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.decimal :lat
      t.decimal :lon

      t.timestamps
    end
  end
end
