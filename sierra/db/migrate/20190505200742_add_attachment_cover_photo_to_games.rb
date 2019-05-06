class AddAttachmentCoverPhotoToGames < ActiveRecord::Migration[5.1]
  def self.up
    change_table :games do |t|
      t.attachment :cover_photo
    end
  end

  def self.down
    remove_attachment :games, :cover_photo
  end
end
