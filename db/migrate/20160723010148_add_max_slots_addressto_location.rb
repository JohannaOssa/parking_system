class AddMaxSlotsAddresstoLocation < ActiveRecord::Migration
  def change
    add_column :locations, :max_slots, :integer
    add_column :locations, :address, :string
  end
end
