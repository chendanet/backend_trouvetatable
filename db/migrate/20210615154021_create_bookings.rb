class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :seat
      t.time :time
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
