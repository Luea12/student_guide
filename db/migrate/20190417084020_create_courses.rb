class CreateCourses < ActiveRecord::Migration[5.2]
  def up
    create_table :courses do |t|
      t.string :name, :null => false
      t.string :room, :default => "TBA", :null => false
      t.string :teacher_first_name
      t.string :teacher_last_name
      t.string :start_time, :null => false
      t.string :end_time, :null => false
      t.string :day, :null => false
      t.string :kind, :null => false
      t.string :frequency, :null => false
      t.integer :teacher_id, :null => true
      t.timestamps
    end
    add_index :courses, :name
    add_index :courses, [:teacher_first_name, :teacher_last_name]
  end

  def down
    drop_table :courses
  end
end
