require 'rails_helper'

RSpec.describe "registries/show", type: :view do
  before(:each) do
    @registry = assign(:registry, Registry.create!(
      :type_of_event => "Type Of Event",
      :story => "MyText",
      :event_website => "Event Website",
      :delivery_instructions => "MyText",
      :notes => "MyText",
      :publish => false,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type Of Event/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Event Website/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
