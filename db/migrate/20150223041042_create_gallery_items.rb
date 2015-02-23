class CreateGalleryItems < ActiveRecord::Migration
  def change
    create_table :gallery_items do |t|
      t.references :gallery, index: true
      t.references :item, index: true

      t.timestamps
    end
  end
end
