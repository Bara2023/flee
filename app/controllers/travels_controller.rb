class TravelsController < ApplicationController
  def index
    @search = Search.find(params[:search_id])
    @travels = Travel.all

    @travels = @travels.where(airport_start: @search.airport_start) if @search.airport_start.present?

    if @search.start_date.present? && @search.end_date.present?
      @travels = @travels.where("start_date >= ? AND end_date <= ?", @search.start_date, @search.end_date)
    elsif @search.start_date.present?
      @travels = @travels.where("start_date >= ?", @search.start_date)
    elsif @search.end_date.present?
      @travels = @travels.where("end_date <= ?", @search.end_date)
    end

    @travels = @travels.where(budget_max: @search.budget_max) if @search.budget_max.present?
    @travels = @travels.where(destination: @search.destination) if @search.destination.present?
    @travels = @travels.where(mood: @search.mood) if @search.mood.present?
    @travels = @travels.where(age: @search.age) if @search.age.present?

    if @travels.empty?
      flash.now[:notice] = "Aucun voyage ne correspond à votre recherche. #{view_context.link_to('Revenir à la page de recherche', new_search_path)}".html_safe
    end
  end

  def new
    @travel = Travel.new
  end

  def create
    @travel = Travel.new(travel_params)
    @travel.user = current_user
    if @travel.save
      redirect_to travel_path(@travel)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @travel = Travel.find(params[:id])
    @search_url = params[:search_url]
  end

  def chatroom
    @travel = Travel.find(params[:id])
    @message = Message.new
  end

  private

  def travel_params
    params.require(:travel).permit(:airport_start, :start_date, :end_date, :budget_max, :destination, :mood, :age, :status, :date_range)
  end
end
