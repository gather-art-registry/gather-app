require 'rails_helper'

RSpec.describe "registries/index", type: :view do
  before(:each) do
    assign(:registries, [
      Registry.create!(
        :type_of_event => "Type Of Event",
        :story => "MyText",
        :event_website => "Event Website",
        :delivery_instructions => "MyText",
        :notes => "MyText",
        :publish => false,
        :user => nil
      ),
      Registry.create!(
        :type_of_event => "Type Of Event",
        :story => "MyText",
        :event_website => "Event Website",
        :delivery_instructions => "MyText",
        :notes => "MyText",
        :publish => false,
        :user => nil
      )
    ])
  end

  it "renders a list of registries" do
    render
    assert_select "tr>td", :text => "Type Of Event".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Event Website".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
