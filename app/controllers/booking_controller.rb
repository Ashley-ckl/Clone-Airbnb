class BookingController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(strong_booking_params)
    if @booking.save
      redirect_to space_bookings_path
    else
      render :new
    end
  end

  private

  def strong_booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
