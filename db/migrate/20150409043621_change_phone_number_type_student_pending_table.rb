class ChangePhoneNumberTypeStudentPendingTable < ActiveRecord::Migration
  def change
  	change_column :students, :phoneNumber, :string
  	change_column :pendings, :phoneNumber, :string
  end
end
