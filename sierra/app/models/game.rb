class Game < ApplicationRecord
	has_attached_file :cover_photo
	validates_attachment_content_type :cover_photo, content_type: /\Aimage\/.*\z/
	
	def self.search(search)
		
	end
end
