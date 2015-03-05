require 'rails_helper'

RSpec.describe "contents/index", type: :view do
  before(:each) do
    assign(:contents, [
      Content.create!(
        :title => "MyText",
        :body => "MyText",
        :order => 1,
        :page => "Page"
      ),
      Content.create!(
        :title => "MyText",
        :body => "MyText",
        :order => 1,
        :page => "Page"
      )
    ])
  end

  it "renders a list of contents" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Page".to_s, :count => 2
  end
end
