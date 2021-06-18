class AddForeignKeyToVenues < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :venues, :users
  end
end
