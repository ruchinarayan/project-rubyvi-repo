class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :profName
      t.string :profEmail

      t.timestamps null: false
    end
  end
end
