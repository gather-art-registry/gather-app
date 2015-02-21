require 'rails_helper'

RSpec.describe "media/index", type: :view do
  before(:each) do
    assign(:media, [
      Medium.create!(
        :name => "Name"
      ),
      Medium.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of media" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
