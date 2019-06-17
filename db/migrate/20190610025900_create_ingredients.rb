class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.references :recipe, foreign_key: true
      t.references :constituent, foreign_key: true
      t.integer :quantity
      t.string :quantity_unit_of_measure
      t.integer :servings

      t.timestamps
    end
  end
end
