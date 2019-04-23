class AddStatus < ActiveRecord::Migration[5.1]
  def change
	change_column :applications, :status, :type, :default => "Waiting for Approval"
	change_column :applications, :comments, :type, :default => ""
  end
end
