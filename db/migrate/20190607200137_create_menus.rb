class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :description, :limit => 255
      t.string :title, :limit => 50
      t.string :years_involved, :limit => 4
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
