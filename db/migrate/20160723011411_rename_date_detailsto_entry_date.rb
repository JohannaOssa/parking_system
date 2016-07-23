class RenameDateDetailstoEntryDate < ActiveRecord::Migration
  def change
    rename_column :park_records, :date_details, :entry_date
  end
end
