class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :user, foreign_key: true
      t.text :description
      t.boolean :urban
      t.string :booking, foreign_key: true
      t.boolean :rooftop
      t.boolean :permaculture
      t.boolean :training
      t.integer :capacity
      t.integer :price

      t.timestamps
    end
  end
end
