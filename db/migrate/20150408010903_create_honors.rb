class CreateHonors < ActiveRecord::Migration
  def change
    create_table :honors do |t|
      t.integer :contract_id
      t.string :uid
      t.string :course_id
      t.string :prof_email
      t.string :semester
      t.integer :year
      t.string :grade
      t.string :pdf
      t.date :dates
      t.has_attached_file :hAttach
      t.timestamps null: false
    end
    add_index :honors, :contract_id, unique: true
  end
end
