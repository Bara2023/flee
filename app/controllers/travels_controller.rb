class TravelsController < ApplicationController
  def index
    @travels = Travel.all

    if params[:search].present?
    @travels = @travels.where(airport_start: params[:search][:airport_start]) if params[:search][:airport_start].present?
    @travels = @travels.where(start_date: params[:search][:start_date]) if params[:search][:start_date].present?
    @travels = @travels.where(budget_max: params[:search][:budget_max]) if params[:search][:budget_max].present?

    # search = Search.new(search_params)
    # search.user = current_user
    # search.save
    end
  end

  def new
    @travel = Travel.new
  end

  def create
    @travel = Travel.new(search_params)
    @travel.save
  end

  private

  def search_params
    params.require(:search).permit(:airport_start, :start_date, :budget_max, :lasting, :destination, :mood, :age, :status)
  end
end
