class CreateGroups < ActiveRecord::Migration[5.2]
  def up
    create_table :groups, :id => false do |t|
      t.integer :group_no, :null => false
      t.string :major, :null => false
      t.timestamps
    end
    add_index :groups, :group_no, :unique => true
  end

  def down
    drop_table :groups
  end
end
