class Venue < ApplicationRecord
    belongs_to :user
    has_many :bookings, dependent: :destroy
    has_many :ratings, dependent: :destroy
    has_many_attached :images
end
