require 'rails_helper'

RSpec.describe "registries/new", type: :view do
  before(:each) do
    assign(:registry, Registry.new(
      :type_of_event => "MyString",
      :story => "MyText",
      :event_website => "MyString",
      :delivery_instructions => "MyText",
      :notes => "MyText",
      :publish => false,
      :user => nil
    ))
  end

  it "renders new registry form" do
    render

    assert_select "form[action=?][method=?]", registries_path, "post" do

      assert_select "input#registry_type_of_event[name=?]", "registry[type_of_event]"

      assert_select "textarea#registry_story[name=?]", "registry[story]"

      assert_select "input#registry_event_website[name=?]", "registry[event_website]"

      assert_select "textarea#registry_delivery_instructions[name=?]", "registry[delivery_instructions]"

      assert_select "textarea#registry_notes[name=?]", "registry[notes]"

      assert_select "input#registry_publish[name=?]", "registry[publish]"

      assert_select "input#registry_user_id[name=?]", "registry[user_id]"
    end
  end
end
