class AddUserIdToVenues < ActiveRecord::Migration[6.1]
  def change
    add_reference :venues, :user, index: true
  end
end
