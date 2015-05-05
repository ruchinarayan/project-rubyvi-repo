class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :UID
      t.string :firstName
      t.string :lastName
      t.string :email
      t.integer :phoneNumber
      t.string :status

      t.timestamps null: false
    end
    add_index :students, :UID, unique: true
  end
end
