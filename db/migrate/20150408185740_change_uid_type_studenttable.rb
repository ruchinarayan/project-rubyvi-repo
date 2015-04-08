class ChangeUidTypeStudenttable < ActiveRecord::Migration
  def change
  	change_column :students, :UID, :string
  end
end
