class Item < ActiveRecord::Base
  belongs_to :artist
  belongs_to :item_availability
  belongs_to :production_category
  belongs_to :delivery_timing
  belongs_to :shipping_instruction

  has_many :item_media
  has_many :media, through: :item_media
  accepts_nested_attributes_for :item_media, :allow_destroy => true

  has_many :categories
  has_many :media, through: :categories
  accepts_nested_attributes_for :categories, :allow_destroy => true

  mount_uploader :image_1, ImageUploader
  mount_uploader :image_2, ImageUploader
  mount_uploader :image_3, ImageUploader
  mount_uploader :image_4, ImageUploader
end
