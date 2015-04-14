class AddPdfToPendings < ActiveRecord::Migration
  def change
    add_column :pendings, :pdf, :binary
  end
end
