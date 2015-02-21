class Medium < ActiveRecord::Base
	has_many :item_media
	has_many :items, through: :item_media
end
