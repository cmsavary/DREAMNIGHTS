class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def new
    @room = Room.find(params[:room_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @room = Room.find(params[:room_id])
    @booking.room = @room
    if @booking.save
      redirect_to dashboard_path
    else
      render "rooms/show", status: :unprocessable_entity
    end
  end

  def edit
  end

  def show
    @room = Room.find(params[:room_id])
    @booking = Booking.new
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_at, :ends_at)
  end
end
