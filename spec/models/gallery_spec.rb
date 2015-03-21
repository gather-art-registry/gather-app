require 'rails_helper'

RSpec.describe Gallery, type: :model do
  describe Gallery do
	  it "has many items" do
	    t = Gallery.reflect_on_association(:items)
	    expect(t.macro).to eq(:has_many)
	  end
	end
end
