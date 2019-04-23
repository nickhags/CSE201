class Application < ApplicationRecord
	has_many :images
	
	
	validates :title, presence: true
	validates :description, presence: true
	validates :developers, presence: true
	validates :platforms, presence: true
	validates :url, presence: true
	validates :price, presence: true
	
end
