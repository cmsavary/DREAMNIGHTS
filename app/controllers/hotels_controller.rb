class HotelsController < ApplicationController

  private

  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy
    redirect_to hotels_path, status: :see_other
  end
end
