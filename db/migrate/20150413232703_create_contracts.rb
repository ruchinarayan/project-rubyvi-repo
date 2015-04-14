class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :contract_identity
      t.string :email
      t.string :contractor_name
      t.string :uuid
      t.string :contractor_phone
      t.string :course
      t.string :section
      t.integer :credit_hours
      t.string :semester
      t.integer :year
      t.string :instructor
      t.string :instructor_email

      t.timestamps null: false
    end
  end
end
