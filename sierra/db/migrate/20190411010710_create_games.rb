class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.text :developers
      t.text :platforms
      t.string :url
      t.string :price

      t.timestamps
    end
  end
end
