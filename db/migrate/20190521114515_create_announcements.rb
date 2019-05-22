class CreateAnnouncements < ActiveRecord::Migration[5.2]
  def up
    create_table :announcements do |t|
      t.text :content, :null => false
      t.date :valability, :null => false
      t.boolean :visible_to_teachers, :null => false
      t.integer :teacher_id, :null => false
      t.timestamps
    end
  end

  def down
    drop_table :announcements
  end
end
