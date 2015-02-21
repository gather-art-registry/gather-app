json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :first_name_2, :last_name_2, :username, :email, :email_2, :phone, :phone_2, :address, :city, :state, :zip
  json.url user_url(user, format: :json)
end
