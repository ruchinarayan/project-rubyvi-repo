class AddStudentRefToHonors < ActiveRecord::Migration
  def change
    add_reference :honors, :student, index: true
    add_foreign_key :honors, :students
  end
end
