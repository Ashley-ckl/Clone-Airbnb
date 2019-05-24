class PaymentsController < ApplicationController
  before_action :set_booking, only: [:create, :new]
  def new
    authorize(@booking)
  end

  def create
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end
end
