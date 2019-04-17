class CreateOptionals < ActiveRecord::Migration[5.2]
  def change
    create_table :optionals do |t|

      t.timestamps
    end
  end
end
