class AddColumnsToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :check_in_date, :datetime
    add_column :bookings, :check_out_date, :datetime
    add_column :bookings, :user_id, :integer
    add_column :bookings, :bear_bed_id, :integer
  end
end
