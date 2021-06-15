class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :price
      t.string :cuisine
      t.string :category
      t.string :phone_number
      t.string :zipcode
      t.text :description
      t.boolean :terrace
      t.integer :seatnumber
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
