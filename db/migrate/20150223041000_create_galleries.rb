class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :description
      t.references :artist, index: true

      t.timestamps
    end
  end
end
