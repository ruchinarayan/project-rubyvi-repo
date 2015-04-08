class CreatePendings < ActiveRecord::Migration
  def change
    create_table :pendings do |t|
      t.integer :contract_id
      t.integer :uid
      t.string :firstName
      t.string :lastName
      t.string :email
      t.integer :phoneNumber
      t.string :semester
      t.string :profName
      t.string :profEmail
      t.string :course_id
      t.integer :year
      t.string :present_date

      t.timestamps null: false
    end
  end
end
