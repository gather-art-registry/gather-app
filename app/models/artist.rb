class Artist < ActiveRecord::Base
  belongs_to :type_of_product
  has_many :items

  has_many :artist_media
  has_many :media, through: :artist_media

  validates :primary_identifier, presence: true

  mount_uploader :image, ImageUploader

  def artist_id
  	self.id
  end
end
