class AddNameDeleteLatitudeLongitudetoLocation < ActiveRecord::Migration
  def change
    add_column :locations, :name, :string
    remove_column :locations, :location_latitude, :string
    remove_column :locations, :location_longitude, :string
  end
end
