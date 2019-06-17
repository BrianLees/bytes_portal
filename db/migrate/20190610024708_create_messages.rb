class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.boolean :rsvp
      t.references :participant, foreign_key: true
      t.boolean :is_paid

      t.timestamps
    end
  end
end
