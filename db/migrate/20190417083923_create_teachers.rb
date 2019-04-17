class CreateTeachers < ActiveRecord::Migration[5.2]
  def up
    create_table :teachers do |t|
      t.string :first_name, :limit => 50, :null => false
      t.string :last_name, :limit => 50, :null => false
      t.string :email, :limit => 100, :null => false
      t.string :username, :limit => 25, :null => false
      t.string :password_digest
      t.timestamps
    end
    add_index :teachers, :username
    add_index :teachers, :email
    add_index :teachers, [:first_name, :last_name]
  end

  def down
    drop_table :teachers
  end
end
