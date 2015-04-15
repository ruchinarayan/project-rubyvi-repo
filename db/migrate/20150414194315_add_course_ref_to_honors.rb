class AddCourseRefToHonors < ActiveRecord::Migration
  def change
    add_reference :honors, :corse, index: true
    add_foreign_key :honors, :corses
  end
end
