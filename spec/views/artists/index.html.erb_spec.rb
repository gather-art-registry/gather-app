require 'rails_helper'

RSpec.describe "artists/index", type: :view do
  before(:each) do
    assign(:artists, [
      Artist.create!(
        :primary_identifier => "Primary Identifier",
        :secondary_identifier => "Secondary Identifier",
        :artist_statement => "MyText",
        :artist_bio => "MyText",
        :image => "Image",
        :website => "Website",
        :twitter => "Twitter",
        :facebook => "Facebook",
        :studio_address => "Studio Address",
        :studio_city => "Studio City",
        :studio_state => "Studio State",
        :studio_zip => "Studio Zip",
        :active => false,
        :studio_pickup => false,
        :local_delivery => false,
        :delivery_instructions => "MyText",
        :type_of_product => nil,
        :notes => "MyText"
      ),
      Artist.create!(
        :primary_identifier => "Primary Identifier",
        :secondary_identifier => "Secondary Identifier",
        :artist_statement => "MyText",
        :artist_bio => "MyText",
        :image => "Image",
        :website => "Website",
        :twitter => "Twitter",
        :facebook => "Facebook",
        :studio_address => "Studio Address",
        :studio_city => "Studio City",
        :studio_state => "Studio State",
        :studio_zip => "Studio Zip",
        :active => false,
        :studio_pickup => false,
        :local_delivery => false,
        :delivery_instructions => "MyText",
        :type_of_product => nil,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of artists" do
    render
    assert_select "tr>td", :text => "Primary Identifier".to_s, :count => 2
    assert_select "tr>td", :text => "Secondary Identifier".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "Studio Address".to_s, :count => 2
    assert_select "tr>td", :text => "Studio City".to_s, :count => 2
    assert_select "tr>td", :text => "Studio State".to_s, :count => 2
    assert_select "tr>td", :text => "Studio Zip".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
