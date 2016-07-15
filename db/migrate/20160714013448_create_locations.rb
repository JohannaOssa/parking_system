class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location_latitude
      t.string :location_longitude
      t.string :string
      t.string :description

      t.timestamps null: false
    end
  end
end
