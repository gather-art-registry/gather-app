FactoryGirl.define do
  factory :registry do
    type_of_event "MyString"
event_date "2015-02-21"
registry_close_date "2015-02-21"
story "MyText"
event_website "MyString"
delivery_instructions "MyText"
notes "MyText"
publish false
user nil
  end

end
