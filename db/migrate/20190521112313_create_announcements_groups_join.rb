class CreateAnnouncementsGroupsJoin < ActiveRecord::Migration[5.2]
  def up
    create_table :announcements_groups, :id => false do |t|
        t.integer :announcement_id
      t.integer :group_id
    end
    add_index :announcements_groups, [:announcement_id, :group_id]
  end

  def down
    drop_table :announcements_groups
  end
end
