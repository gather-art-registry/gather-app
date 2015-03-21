require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do
	  it "have many registries" do
	    t = User.reflect_on_association(:registries)
	    expect(t.macro).to eq(:has_many)
	  end
	end
end
