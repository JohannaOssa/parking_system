class AddExitDateTotaltoParkRecord < ActiveRecord::Migration
  def change
    add_column :park_records, :exit_date, :datetime
    add_column :park_records, :total, :float
  end
end
