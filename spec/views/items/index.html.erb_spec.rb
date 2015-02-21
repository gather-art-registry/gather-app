require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :name => "Name",
        :artist => nil,
        :description => "MyText",
        :price => "Price",
        :item_availability => nil,
        :quantity => 1,
        :special_order => false,
        :turn_around_time => "Turn Around Time",
        :production_category => nil,
        :delivery_timing => nil,
        :shipping_instruction => nil,
        :notes => "MyText"
      ),
      Item.create!(
        :name => "Name",
        :artist => nil,
        :description => "MyText",
        :price => "Price",
        :item_availability => nil,
        :quantity => 1,
        :special_order => false,
        :turn_around_time => "Turn Around Time",
        :production_category => nil,
        :delivery_timing => nil,
        :shipping_instruction => nil,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Turn Around Time".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
