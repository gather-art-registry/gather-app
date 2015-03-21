require 'rails_helper'

RSpec.describe TypeOfProduct, type: :model do
  describe TypeOfProduct do
	  it "should have many items" do
	    t = TypeOfProduct.reflect_on_association(:items)
	    expect(t.macro).to eq(:has_many)
	  end
	end
end
