class CreateAttractions < ActiveRecord::Migration[6.1]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :type
      t.string :photo
      t.string :address
      t.string :phone
      t.string :website
      t.string :region
      t.string :season
      t.string :price
      t.string :durration
      t.text :description
      t.text :details
      t.integer :reader_id
      t.timestamps
    end 
  end
end
