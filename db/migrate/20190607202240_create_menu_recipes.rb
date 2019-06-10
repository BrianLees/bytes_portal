class CreateMenuRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_recipes do |t|
      t.references :menu, foreign_key: true
      t.references :recipe, foreign_key: true
      t.timestamps
    end
  end
end
