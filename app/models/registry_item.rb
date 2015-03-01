class RegistryItem < ActiveRecord::Base
  belongs_to :registry
  belongs_to :item
end
