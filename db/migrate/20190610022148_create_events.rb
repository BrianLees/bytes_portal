class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :description
      t.references :location, foreign_key: true
      t.references :menu, foreign_key: true
      t.timestamp :event_time
      t.boolean :is_approved
      t.timestamps
    end
  end
end
