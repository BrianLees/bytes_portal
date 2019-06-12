class CreateSources < ActiveRecord::Migration[5.1]
  def change
    create_table :sources do |t|
      t.string :description
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
