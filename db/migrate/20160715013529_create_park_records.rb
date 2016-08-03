class CreateParkRecords < ActiveRecord::Migration
  def change
    create_table :park_records do |t|
      t.string :comments
      t.datetime :entry_date
      t.datetime :exit_date
      t.float :total
      t.references :vehicle, index: true, foreign_key: true
      t.references :slot, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
