json.array!(@items) do |item|
  json.extract! item, :id, :name, :artist_id, :description, :price, :item_availability_id, :quantity, :special_order, :turn_around_time, :production_category_id, :delivery_timing_id, :shipping_instruction_id, :notes
  json.url item_url(item, format: :json)
end
