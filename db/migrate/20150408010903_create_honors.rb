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
      t.binary :pdf
      t.date :dates

      t.timestamps null: false
    end
  end
end
