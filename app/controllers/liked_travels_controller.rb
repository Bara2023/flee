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
    @liked_travels = current_user.liked_travels
    @search_url = :bookmarks_url
  end

  def show
  end

  def destroy
    @liked_travel = LikedTravel.find(params[:id])
    @liked_travel.destroy
    redirect_to bookmarks_path, status: :see_other
  end
end
