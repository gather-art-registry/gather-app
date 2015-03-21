require 'rails_helper'

RSpec.describe Medium, type: :model do
  describe Medium do
	  it "should have many items" do
	    t = Medium.reflect_on_association(:items)
	    expect(t.macro).to eq(:has_many)
	  end

	  it "should have many categories" do
	    t = Medium.reflect_on_association(:categories)
	    expect(t.macro).to eq(:has_many)
	  end

	  it "should have many artists" do
	    t = Medium.reflect_on_association(:artists)
	    expect(t.macro).to eq(:has_many)
	  end
	end
end
