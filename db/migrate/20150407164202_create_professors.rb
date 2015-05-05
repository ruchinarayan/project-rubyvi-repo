class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :profName
      t.string :profEmail

      t.timestamps null: false
    end
    add_index :professors, :profEmail, unique: true
  end
end
