require 'rails_helper'

RSpec.describe ProductionCategory, type: :model do
  describe ProductionCategory do
	  it "should have many items" do
	    t = ProductionCategory.reflect_on_association(:items)
	    expect(t.macro).to eq(:has_many)
	  end
	end
end
