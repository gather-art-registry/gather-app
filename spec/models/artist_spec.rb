require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe Artist do
	  it "should have many items" do
	    t = Artist.reflect_on_association(:items)
	    expect(t.macro).to eq(:has_many)
	  end

	  it "should have many media" do
	    t = Artist.reflect_on_association(:media)
	    expect(t.macro).to eq(:has_many)
	  end
	end
end
