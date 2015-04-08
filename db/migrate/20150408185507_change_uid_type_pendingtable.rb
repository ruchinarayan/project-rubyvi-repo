class ChangeUidTypePendingtable < ActiveRecord::Migration
  def change
  	change_column :pendings, :uid, :string
  end
end
