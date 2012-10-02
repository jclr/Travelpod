class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.decimal :lat
      t.decimal :lon

      t.timestamps
    end
  end
end
