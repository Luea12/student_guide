class CreateEventsTeachersJoin < ActiveRecord::Migration[5.2]
  def up
    create_table :events_teachers, :id => false do |t|
      t.integer :event_id
      t.integer :teacher_id
    end
    add_index :events_teachers, [:event_id, :teacher_id]
  end

  def down
    drop_table :events_teachers
  end
end
