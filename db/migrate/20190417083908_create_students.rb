class CreateStudents < ActiveRecord::Migration[5.2]
  def up
    create_table :students do |t|
      t.string :first_name, :limit => 50, :null => false
      t.string :last_name, :limit => 50, :null => false
      t.string :email, :limit => 100, :null => false
      t.string :username, :limit => 25, :null => false
      t.string :password_digest, :null => false
      t.integer :group_id, :null => false
      t.timestamps
    end
    add_index :students, :username, :unique => true
    add_index :students, :email, :unique => true
    add_index :students, [:first_name, :last_name]
  end

  def down
    drop_table :students
  end
end
