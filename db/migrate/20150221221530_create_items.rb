class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.references :artist, index: true
      t.text :description
      t.string :price
      t.references :item_availability, index: true
      t.integer :quantity
      t.boolean :special_order
      t.string :turn_around_time
      t.references :production_category, index: true
      t.references :delivery_timing, index: true
      t.references :shipping_instruction, index: true
      t.text :notes
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.string :image_4

      t.timestamps
    end
  end
end
