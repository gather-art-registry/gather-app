require 'rails_helper'

RSpec.describe "galleries/edit", type: :view do
  before(:each) do
    @gallery = assign(:gallery, Gallery.create!(
      :name => "MyString",
      :description => "MyString",
      :artist => nil
    ))
  end

  it "renders the edit gallery form" do
    render

    assert_select "form[action=?][method=?]", gallery_path(@gallery), "post" do

      assert_select "input#gallery_name[name=?]", "gallery[name]"

      assert_select "input#gallery_description[name=?]", "gallery[description]"

      assert_select "input#gallery_artist_id[name=?]", "gallery[artist_id]"
    end
  end
end
