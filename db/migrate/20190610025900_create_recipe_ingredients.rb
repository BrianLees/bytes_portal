class CreateRecipeIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.integer :quantity
      t.string :quantity_unit_of_measure
      t.integer :servings

      t.timestamps
    end
  end
end
