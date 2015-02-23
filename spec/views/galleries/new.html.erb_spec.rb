require 'rails_helper'

RSpec.describe "galleries/new", type: :view do
  before(:each) do
    assign(:gallery, Gallery.new(
      :name => "MyString",
      :description => "MyString",
      :artist => nil
    ))
  end

  it "renders new gallery form" do
    render

    assert_select "form[action=?][method=?]", galleries_path, "post" do

      assert_select "input#gallery_name[name=?]", "gallery[name]"

      assert_select "input#gallery_description[name=?]", "gallery[description]"

      assert_select "input#gallery_artist_id[name=?]", "gallery[artist_id]"
    end
  end
end
