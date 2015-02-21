class ShippingInstruction < ActiveRecord::Base
	has_many :items
end
