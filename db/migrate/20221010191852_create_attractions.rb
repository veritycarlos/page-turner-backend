class CreateAttractions < ActiveRecord::Migration[6.1]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :category
      t.string :photo
      t.string :address
      t.string :phone
      t.string :website
      t.string :region
      t.string :season
      t.string :price
      t.string :duration
      t.text :description
      t.text :details
      t.integer :place_id
    end 
  end
end
