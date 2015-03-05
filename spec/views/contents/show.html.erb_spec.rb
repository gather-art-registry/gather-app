require 'rails_helper'

RSpec.describe "contents/show", type: :view do
  before(:each) do
    @content = assign(:content, Content.create!(
      :title => "MyText",
      :body => "MyText",
      :order => 1,
      :page => "Page"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Page/)
  end
end
