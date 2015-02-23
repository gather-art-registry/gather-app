class Gallery < ActiveRecord::Base
  belongs_to :artist

  has_many :gallery_items
  has_many :items, through: :gallery_items
end
