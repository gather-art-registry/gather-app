require 'rails_helper'

RSpec.describe ItemAvailability, type: :model do
  describe ItemAvailability do
	  it "should have many items" do
	    t = ItemAvailability.reflect_on_association(:items)
	    expect(t.macro).to eq(:has_many)
	  end
	end
end
