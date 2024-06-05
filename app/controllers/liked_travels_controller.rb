class LikedTravelsController < ApplicationController

  def fav
    @travel = Travel.find(params[:id])
    @search = Search.find(params[:search])

    if LikedTravel.find_by(travel: @travel, search: @search)
      LikedTravel.find_by(travel: @travel, search: @search).destroy
    else
      LikedTravel.create(travel: @travel, search: @search)
    end

    render json: { status: "ok" }
  end
end
