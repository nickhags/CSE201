class Application < ApplicationRecord
	has_attached_file :cover_photo
	validates_attachment_content_type :cover_photo, content_type: /\Aimage\/.*\z/

	validates :title, presence: true
	validates :description, presence: true
	validates :developers, presence: true
	validates :platforms, presence: true
	validates :url, presence: true
	validates :price, presence: true
	
end
