class CreateArtistMedia < ActiveRecord::Migration
  def change
    create_table :artist_media do |t|
      t.references :artist, index: true
      t.references :medium, index: true

      t.timestamps
    end
  end
end
