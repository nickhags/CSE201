class AddApplicationToImage < ActiveRecord::Migration[5.1]
  def change
    add_reference :images, :application, foreign_key: true
  end
end
