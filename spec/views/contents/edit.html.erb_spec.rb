require 'rails_helper'

RSpec.describe "contents/edit", type: :view do
  before(:each) do
    @content = assign(:content, Content.create!(
      :title => "MyText",
      :body => "MyText",
      :order => 1,
      :page => "MyString"
    ))
  end

  it "renders the edit content form" do
    render

    assert_select "form[action=?][method=?]", content_path(@content), "post" do

      assert_select "textarea#content_title[name=?]", "content[title]"

      assert_select "textarea#content_body[name=?]", "content[body]"

      assert_select "input#content_order[name=?]", "content[order]"

      assert_select "input#content_page[name=?]", "content[page]"
    end
  end
end
