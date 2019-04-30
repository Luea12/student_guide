class CreateEventTokens < ActiveRecord::Migration[5.2]
  def up
    create_table :event_tokens do |t|
      t.string :token, :null => false
      t.timestamps
    end
    add_index :event_tokens, :token, :unique => true
  end

  def down
    drop_table :event_tokens
  end
end
