class CreateItemMedia < ActiveRecord::Migration
  def change
    create_table :item_media do |t|
      t.references :item, index: true
      t.references :medium, index: true

      t.timestamps
    end
  end
end
