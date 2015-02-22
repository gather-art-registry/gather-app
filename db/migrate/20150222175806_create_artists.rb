class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :primary_identifier
      t.string :secondary_identifier
      t.text :artist_statement
      t.text :artist_bio
      t.string :image
      t.string :website
      t.string :twitter
      t.string :facebook
      t.string :studio_address
      t.string :studio_city
      t.string :studio_state
      t.string :studio_zip
      t.boolean :active
      t.boolean :studio_pickup
      t.boolean :local_delivery
      t.text :delivery_instructions
      t.references :type_of_product, index: true
      t.text :notes

      t.timestamps
    end
  end
end
