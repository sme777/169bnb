class BearBedsController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def destory
  end


  def search
    search_params = search_form_params
    if !search_params[:check_in_date].nil?
        bear_bed_booking = BearBedBooking.new(search_params)
        if bear_bed_booking.valid?
            @available_bookings = BearBedBooking.where(location: search_params[:location])
            
            # @bear_bed_booking.save
        else
            flash[:danger] = bear_bed_booking.errors.full_messages
            redirect_to :root
        end 
    end
  end

  private
  def search_form_params
      params.permit(:location, :check_in_date, :check_out_date, :guests)
  end
end
