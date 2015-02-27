class Registry < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :items

  validates :type_of_event, presence: true
end
