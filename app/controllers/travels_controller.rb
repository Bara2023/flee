class TravelsController < ApplicationController
  def index
    @search = Search.find(params[:search_id])
    @travels = Travel.all

    @travels = @travels.where(airport_start: @search.airport_start) if @search.airport_start.present?
    @travels = @travels.where("start_date > ?", @search.start_date) if @search.start_date.present?
    @travels = @travels.where("end_date > ?", @search.end_date) if @search.end_date.present?
    @travels = @travels.where(budget_max: @search.budget_max) if @search.budget_max.present?
    @travels = @travels.where(destination: @search.destination) if @search.destination.present?
    @travels = @travels.where(mood: @search.mood) if @search.mood.present?
    @travels = @travels.where(age: @search.age) if @search.age.present?
  end

  def new
    @travel = Travel.new
  end

  def create
    @travel = Travel.new(search_params)
    @travel.save
  end
end
