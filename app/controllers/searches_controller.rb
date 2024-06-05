class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    @search = Search.new(search_params)
    @search.user = current_user
    @search.save
    redirect_to search_travels_path(@search)
  end

  private

  def searches_params
    params.require(:search).permit(:photo)
  end

  def search_params
    params.require(:search).permit(:airport_start, :start_date, :end_date, :budget_max, :destination, :mood, :age, :status)
  end
end
