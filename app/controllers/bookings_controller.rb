class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create!(booking_params)
    @booking.room = @room
    @booking.user = current_user
    @booking.status = "Pending"
    if @booking.save
      redirect_to rooms_path, notice: "Booked!"
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if booking_params[:accept] == 'true'
      @booking.status = 'accepted'
    elsif booking_params[:accept] == 'false'
      @booking.status = 'rejected'
    end

    if @booking.save
      redirect_to rooms_path
    else
      render :edit
    end
  end

  def destroy
    @booking = current_user.bookings.find(params[:id])
    @booking.destroy
    redirect_to rooms_path, status: :see_other
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def booking_params
    params.require(:booking).permit(:start_at, :ends_at, :accept, :room_id, :user_id)
  end
end
