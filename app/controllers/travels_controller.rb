class TravelsController < ApplicationController
  def index
    @search = Search.find(params[:search_id])
    @travel = Travel.new
  end
end
