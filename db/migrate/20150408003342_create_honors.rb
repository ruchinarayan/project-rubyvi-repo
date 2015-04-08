class CreateHonors < ActiveRecord::Migration
  def change
    create_table :honors do |t|
      t.string :contract_id
      t.string :int
      t.string :uid
      t.string :int
      t.string :course_id
      t.string :prof_email
      t.string :semester
      t.string :year
      t.string :int
      t.string :grade
      t.string :pdf
      t.string :dates
      t.date :

      t.timestamps null: false
    end
  end
end
