require 'rails_helper'

RSpec.describe "artists/show", type: :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Primary Identifier/)
    expect(rendered).to match(/Secondary Identifier/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Twitter/)
    expect(rendered).to match(/Facebook/)
    expect(rendered).to match(/Studio Address/)
    expect(rendered).to match(/Studio City/)
    expect(rendered).to match(/Studio State/)
    expect(rendered).to match(/Studio Zip/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
