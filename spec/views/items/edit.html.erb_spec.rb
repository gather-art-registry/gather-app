require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :artist => nil,
      :description => "MyText",
      :price => "MyString",
      :item_availability => nil,
      :quantity => 1,
      :special_order => false,
      :turn_around_time => "MyString",
      :production_category => nil,
      :delivery_timing => nil,
      :shipping_instruction => nil,
      :notes => "MyText"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_artist_id[name=?]", "item[artist_id]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "input#item_price[name=?]", "item[price]"

      assert_select "input#item_item_availability_id[name=?]", "item[item_availability_id]"

      assert_select "input#item_quantity[name=?]", "item[quantity]"

      assert_select "input#item_special_order[name=?]", "item[special_order]"

      assert_select "input#item_turn_around_time[name=?]", "item[turn_around_time]"

      assert_select "input#item_production_category_id[name=?]", "item[production_category_id]"

      assert_select "input#item_delivery_timing_id[name=?]", "item[delivery_timing_id]"

      assert_select "input#item_shipping_instruction_id[name=?]", "item[shipping_instruction_id]"

      assert_select "textarea#item_notes[name=?]", "item[notes]"
    end
  end
end
