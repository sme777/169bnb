class BearBedBooking < Booking
    validates :guests, presence: true
    validate :guest_number

    def guest_number
        if guests < 1
            errors.add(:guests, "must be a valid number")
        end
    end
end
