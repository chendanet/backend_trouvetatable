class AddPhotoToVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :venues, :photo, :string
  end
end
