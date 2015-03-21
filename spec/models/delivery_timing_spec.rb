require 'rails_helper'

RSpec.describe DeliveryTiming, type: :model do
  describe DeliveryTiming do
	  it "should have many items" do
	    t = DeliveryTiming.reflect_on_association(:items)
	    expect(t.macro).to eq(:has_many)
	  end
	end
end
