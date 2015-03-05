require 'rails_helper'

RSpec.describe "contents/new", type: :view do
  before(:each) do
    assign(:content, Content.new(
      :title => "MyText",
      :body => "MyText",
      :order => 1,
      :page => "MyString"
    ))
  end

  it "renders new content form" do
    render

    assert_select "form[action=?][method=?]", contents_path, "post" do

      assert_select "textarea#content_title[name=?]", "content[title]"

      assert_select "textarea#content_body[name=?]", "content[body]"

      assert_select "input#content_order[name=?]", "content[order]"

      assert_select "input#content_page[name=?]", "content[page]"
    end
  end
end
