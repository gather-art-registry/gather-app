require 'rails_helper'

RSpec.describe "artists/new", type: :view do
  before(:each) do
    assign(:artist, Artist.new(
      :primary_identifier => "MyString",
      :secondary_identifier => "MyString",
      :artist_statement => "MyText",
      :artist_bio => "MyText",
      :image => "MyString",
      :website => "MyString",
      :twitter => "MyString",
      :facebook => "MyString",
      :studio_address => "MyString",
      :studio_city => "MyString",
      :studio_state => "MyString",
      :studio_zip => "MyString",
      :active => false,
      :studio_pickup => false,
      :local_delivery => false,
      :delivery_instructions => "MyText",
      :type_of_product => nil,
      :notes => "MyText"
    ))
  end

  it "renders new artist form" do
    render

    assert_select "form[action=?][method=?]", artists_path, "post" do

      assert_select "input#artist_primary_identifier[name=?]", "artist[primary_identifier]"

      assert_select "input#artist_secondary_identifier[name=?]", "artist[secondary_identifier]"

      assert_select "textarea#artist_artist_statement[name=?]", "artist[artist_statement]"

      assert_select "textarea#artist_artist_bio[name=?]", "artist[artist_bio]"

      assert_select "input#artist_image[name=?]", "artist[image]"

      assert_select "input#artist_website[name=?]", "artist[website]"

      assert_select "input#artist_twitter[name=?]", "artist[twitter]"

      assert_select "input#artist_facebook[name=?]", "artist[facebook]"

      assert_select "input#artist_studio_address[name=?]", "artist[studio_address]"

      assert_select "input#artist_studio_city[name=?]", "artist[studio_city]"

      assert_select "input#artist_studio_state[name=?]", "artist[studio_state]"

      assert_select "input#artist_studio_zip[name=?]", "artist[studio_zip]"

      assert_select "input#artist_active[name=?]", "artist[active]"

      assert_select "input#artist_studio_pickup[name=?]", "artist[studio_pickup]"

      assert_select "input#artist_local_delivery[name=?]", "artist[local_delivery]"

      assert_select "textarea#artist_delivery_instructions[name=?]", "artist[delivery_instructions]"

      assert_select "input#artist_type_of_product_id[name=?]", "artist[type_of_product_id]"

      assert_select "textarea#artist_notes[name=?]", "artist[notes]"
    end
  end
end
