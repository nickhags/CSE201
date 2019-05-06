class AddAttachmentCoverPhotoToApplications < ActiveRecord::Migration[5.1]
  def self.up
    change_table :applications do |t|
      t.attachment :cover_photo
    end
  end

  def self.down
    remove_attachment :applications, :cover_photo
  end
end
