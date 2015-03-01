class Artist < ActiveRecord::Base
  belongs_to :type_of_product
  has_many :items

  has_many :artist_media
  has_many :media, through: :artist_media
  accepts_nested_attributes_for :artist_media, :allow_destroy => true

  validates :primary_identifier, presence: true

  def artist_id
  	self.id
  end
end
