require 'faker'
FactoryGirl.define do
  factory :artist do
    primary_identifier "MyString"
		secondary_identifier "MyString"
		artist_statement "MyText"
		artist_bio "MyText"
		image "MyString"
		website "MyString"
		twitter "MyString"
		facebook "MyString"
		studio_address { Faker::Address.street_address }
		studio_city { Faker::Address.city }
		studio_state { Faker::Address.state }
		studio_zip { Faker::Address.zip }
		active false
		studio_pickup false
		local_delivery false
		delivery_instructions "MyText"
		type_of_product nil
		notes "MyText"
  end

end
