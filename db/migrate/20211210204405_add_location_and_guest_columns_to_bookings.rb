class AddLocationAndGuestColumnsToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :location, :string
    add_column :bookings, :guests, :integer
  end
end
