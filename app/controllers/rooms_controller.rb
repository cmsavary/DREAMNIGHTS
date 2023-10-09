class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  private

  def create
    @room = @hotel.rooms.create
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to rooms_path, status: :see_other
  end

  def new
    @room = Room.new
  end
end
