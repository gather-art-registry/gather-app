class Registry < ActiveRecord::Base
  belongs_to :user
  
  has_many :registry_items
  has_many :items, through: :registry_items

  mount_uploader :image, ImageUploader

  validates :type_of_event, presence: true
  validates :user_id, presence: true

  def registry_id
  	self.id
  end

end
