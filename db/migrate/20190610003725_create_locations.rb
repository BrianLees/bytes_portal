class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :description, :limit => 255
      t.string :address_line_1, :limit => 100
      t.string :address_line_2, :limit => 100
      t.string :city, :limit => 50
      t.string :state_code, :limit =>2
      t.string :zip, :limit => 5
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
