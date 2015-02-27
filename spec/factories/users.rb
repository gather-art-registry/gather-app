require 'faker'

FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
	first_name_2 { Faker::Name.first_name }
	last_name_2 { Faker::Name.last_name }
	username "username"
	email { Faker::Internet.email }
	email_2 { Faker::Internet.email }
	phone { Faker::PhoneNumber.phone_number }
	phone_2 { Faker::PhoneNumber.phone_number }
	address { Faker::Address.street_address }
	city { Faker::Address.city }
	state { Faker::Address.state }
	zip { Faker::Address.zip }
	password { Faker::Internet.password }
  end

end
