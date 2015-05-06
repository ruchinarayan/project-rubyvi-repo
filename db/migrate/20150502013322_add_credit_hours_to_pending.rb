class AddCreditHoursToPending < ActiveRecord::Migration
  def change
    add_column :pendings, :creditHours, :integer
  end
end
