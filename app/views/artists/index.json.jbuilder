json.array!(@artists) do |artist|
  json.extract! artist, :id, :primary_identifier, :secondary_identifier, :artist_statement, :artist_bio, :image, :website, :twitter, :facebook, :studio_address, :studio_city, :studio_state, :studio_zip, :active, :studio_pickup, :local_delivery, :delivery_instructions, :type_of_product_id, :notes
  json.url artist_url(artist, format: :json)
end
