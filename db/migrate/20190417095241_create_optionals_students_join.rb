class CreateOptionalsStudentsJoin < ActiveRecord::Migration[5.2]
  def up
    create_table :optionals_students, :id => false do |t|
      t.integer :optional_id
      t.integer :student_id
    end
    add_index :optionals_students, [:optional_id, :student_id]
  end

  def down
    drop_table :optionals_students
  end
end
