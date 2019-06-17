class CreateConstituents < ActiveRecord::Migration[5.1]
  def change
    create_table :constituents do |t|
      t.string :constituent_name
      t.references :source, foreign_key: true

      t.timestamps
    end
  end
end
