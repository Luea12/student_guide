class CreateAdmins < ActiveRecord::Migration[5.2]
  def up
    create_table :admins do |t|
      t.string :username, :limit => 25, :null => false
      t.string :password_digest, :null => false
      t.timestamps
    end
    add_index :admins, :username, :unique => true

    Admin.create(:username => "admin", :password => "1234")
  end

  def down
    drop_table :admins
  end

end
