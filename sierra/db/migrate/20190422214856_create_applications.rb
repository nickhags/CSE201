class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.string :title
      t.text :description
      t.text :developers
      t.text :platforms
      t.string :url
      t.float :price
      t.string :status
      t.text :comments

      t.timestamps
    end
  end
end
