class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.string :uid
      t.boolean :unhp
      t.boolean :honexpju
      t.boolean :honexpse
      t.boolean :honthese
      t.boolean :gpa

      t.timestamps null: false
    end
  end
end
