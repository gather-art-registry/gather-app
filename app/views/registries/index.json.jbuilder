json.array!(@registries) do |registry|
  json.extract! registry, :id, :type_of_event, :event_date, :registry_close_date, :story, :event_website, :delivery_instructions, :notes, :publish, :user_id
  json.url registry_url(registry, format: :json)
end
