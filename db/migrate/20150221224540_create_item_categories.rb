class CreateItemCategories < ActiveRecord::Migration
  def change
    create_table :item_categories do |t|
      t.references :item, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
