class AddDefVal < ActiveRecord::Migration[5.1]
  def change
	change_column :users, :role, :default => "basic"
  end
end
