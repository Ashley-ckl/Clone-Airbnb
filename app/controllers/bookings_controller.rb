class BookingsController < ApplicationController
  before_action :set_space, only: [:create, :new]
  def index
    @bookings_for_my_spaces = Booking.where(host: current_user)
    authorize(@bookings_for_my_spaces)
    @bookings_for_my_events = Booking.where(user: current_user)
    authorize(@bookings_for_my_events)
  end

  def new
    @booking = Booking.new
    authorize(@booking)
  end

  def create
    @booking = Booking.new(strong_booking_params)
    @booking.user = current_user
    @booking.space = @space
    @booking.host =  @space.user
    authorize(@booking)
    if @booking.save
      @booking.total_price = @space.price_per_hour * @booking.hours
      redirect_to new_booking_payment_path(@booking)
    else
      render "spaces/show"
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    authorize(@booking)
    redirect_to bookings_path
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.status = "rejected"
    @booking.save
    authorize(@booking)
    redirect_to bookings_path
  end

  private

  def set_space
    @space = Space.find(params[:space_id])
  end

  def strong_booking_params
    params.require(:booking).permit(:start_date, :start_time, :hours, :status)
  end
end
