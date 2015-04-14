class AddGradeToPendings < ActiveRecord::Migration
  def change
    add_column :pendings, :grade, :string
  end
end
