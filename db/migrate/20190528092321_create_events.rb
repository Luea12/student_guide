class CreateEvents < ActiveRecord::Migration[5.2]
  def up
    create_table :events do |t|
      t.string :name, :null => false
      t.date :date, :null => false
      t.string :location, :null => false
      t.text :description, :null => false
      t.integer :student_id, :null => true
      t.integer :teacher_id, :null => true
      t.timestamps
    end
    add_index :events, :name
    add_index :events, :date
    add_index :events, :location
  end

  def down
    drop_table :events
  end
  end
