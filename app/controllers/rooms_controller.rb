class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def show
    @booking = Booking.new
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:name, :price_per_night, :capacity, :photo)
  end

  def create
    @room = Room.new(room_params)
    @room.user = current_user
    if @room.save
      redirect_to rooms_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @room.update(room_params)
      redirect_to room_path(@room)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @room.destroy
    redirect_to rooms_path, status: :see_other
  end
end
