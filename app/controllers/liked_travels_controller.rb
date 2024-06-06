class LikedTravelsController < ApplicationController

  def fav
    @travel = Travel.find(params[:id])
    @search = Search.find(params[:search])

    if LikedTravel.find_by(travel: @travel)
      LikedTravel.find_by(travel: @travel).destroy
    else
      LikedTravel.create(travel: @travel, search: @search)
    end

    render json: { status: "ok" }
  end

  def bookmarks
    @liked_travels = LikedTravel.all
  end

end
