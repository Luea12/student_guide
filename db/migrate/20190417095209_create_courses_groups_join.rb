class CreateCoursesGroupsJoin < ActiveRecord::Migration[5.2]
  def up
    create_table :courses_groups, :id => false do |t|
      t.integer :course_id
      t.integer :group_id
    end
    add_index :courses_groups, [:course_id, :group_id]
  end

  def down
    drop_table :courses_groups
  end
end
