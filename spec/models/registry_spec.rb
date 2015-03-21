require 'rails_helper'

RSpec.describe Registry, type: :model do
  describe Registry do
	  it "should have many items" do
	    t = Registry.reflect_on_association(:items)
	    expect(t.macro).to eq(:has_many)
	  end
	end
end
