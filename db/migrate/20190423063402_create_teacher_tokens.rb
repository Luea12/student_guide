class CreateTeacherTokens < ActiveRecord::Migration[5.2]
  def up
    create_table :teacher_tokens do |t|
      t.string :token, :null => false
      t.timestamps
    end
    add_index :teacher_tokens, :token, :unique => true
  end

  def down
    drop_table :teacher_tokens
  end
end
