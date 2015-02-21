class ItemMedium < ActiveRecord::Base
  belongs_to :item
  belongs_to :medium
end
