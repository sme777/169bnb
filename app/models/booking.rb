class Booking < ApplicationRecord
    validates :check_in_date, :check_out_date, presence: true
    validate :end_date_after_start_date

    def end_date_after_start_date
        return if check_in_date.blank? || check_out_date.blank?
        
        if check_out_date < check_in_date
          errors.add(:end_date, "must be after the start date")
        end            
     end

end
