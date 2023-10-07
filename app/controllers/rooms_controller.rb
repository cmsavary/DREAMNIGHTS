class RoomsController < ApplicationController
  def index
    if params[:query].present?
      sql_subquery = "name ILIKE :query"
      @rooms = Room.where(sql_subquery, query: "%#{params[:query]}%")
    else
      @tools = Room.all
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  private

  def delete
  end
end
