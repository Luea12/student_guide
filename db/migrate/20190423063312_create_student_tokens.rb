class CreateStudentTokens < ActiveRecord::Migration[5.2]
  def up
    create_table :student_tokens do |t|
      t.string :token, :null => false
      t.integer :group_no, :null => false
      t.timestamps
    end
    add_index :student_tokens, :token, :unique => true
  end

  def down
    drop_table :student_tokens
  end
end
