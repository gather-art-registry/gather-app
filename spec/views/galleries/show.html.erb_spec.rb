require 'rails_helper'

RSpec.describe "galleries/show", type: :view do
  before(:each) do
    @gallery = assign(:gallery, Gallery.create!(
      :name => "Name",
      :description => "Description",
      :artist => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
