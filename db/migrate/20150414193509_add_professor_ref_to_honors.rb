class AddProfessorRefToHonors < ActiveRecord::Migration
  def change
    add_reference :honors, :professor, index: true
    add_foreign_key :honors, :professors
  end
end
