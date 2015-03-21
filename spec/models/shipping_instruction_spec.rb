require 'rails_helper'

RSpec.describe ShippingInstruction, type: :model do
  describe ShippingInstruction do
	  it "should have many items" do
	    t = ShippingInstruction.reflect_on_association(:items)
	    expect(t.macro).to eq(:has_many)
	  end
	end
end
