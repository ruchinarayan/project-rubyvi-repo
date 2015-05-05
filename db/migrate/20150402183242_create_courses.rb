class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_id
      t.string :course_name

      t.timestamps null: false
    end
    add_index :courses, :course_id, unique: true
  end
end
