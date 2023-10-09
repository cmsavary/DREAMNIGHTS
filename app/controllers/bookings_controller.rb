class BookingsController < ApplicationController
  before_action :authenticate_user!
  def create
    @booking = @room.bookings.create
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to rooms_path, status: :see_other
  end
end
