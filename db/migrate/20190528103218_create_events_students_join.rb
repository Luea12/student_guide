class CreateEventsStudentsJoin < ActiveRecord::Migration[5.2]
  def up
    create_table :events_students, :id => false do |t|
      t.integer :event_id
      t.integer :student_id
    end
    add_index :events_students, [:event_id, :student_id]
  end

  def down
    drop_table :events_students
  end
end
