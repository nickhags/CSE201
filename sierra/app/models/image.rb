class Image < ApplicationRecord
  belongs_to :game, required: false
  belongs_to :application, required: false
  has_attached_file :picture
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
