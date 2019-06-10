class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :description, :limit => 255
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
