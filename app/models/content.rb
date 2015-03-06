class Content < ActiveRecord::Base
	validates :page, presence: true
end
