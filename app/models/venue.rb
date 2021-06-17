class Venue < ApplicationRecord
    has_many :bookings
    has_many_attached :images
end
