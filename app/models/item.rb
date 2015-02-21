class Item < ActiveRecord::Base
  belongs_to :artist
  belongs_to :item_availability
  belongs_to :production_category
  belongs_to :delivery_timing
  belongs_to :shipping_instruction

  has_many :item_media
  has_many :media, through: :item_media

  has_many :categories
  has_many :media, through: :categories

  mount_uploader :image_1, :image_2, :image_3, :image_4, ImageUploader
end
