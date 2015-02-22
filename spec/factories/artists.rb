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
studio_address "MyString"
studio_city "MyString"
studio_state "MyString"
studio_zip "MyString"
active false
studio_pickup false
local_delivery false
delivery_instructions "MyText"
type_of_product nil
notes "MyText"
  end

end
