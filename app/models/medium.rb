class Medium < ActiveRecord::Base
	has_many :item_media
	has_many :items, through: :item_media

	has_many :category_media
	has_many :categories, through: :category_media

	has_many :artist_media
	has_many :artists, through: :artist_media
end
