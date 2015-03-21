require 'rails_helper'

RSpec.describe Category, type: :model do
  describe Category do
	  it "should have many items" do
	    t = Category.reflect_on_association(:items)
	    expect(t.macro).to eq(:has_many)
	  end
	end
end
