class TravelsController < ApplicationController
  def index
    raise
    
    @travels = Travel.all
  end

  def new
    @travel = Travel.new
  end

  def create
    @travel = Travel.new(travels_params)
    @travel.save
  end

  private

  def travels_params
    params.require(:travel).permit(:airport_start, :start_date, :budget_max, :lasting, :destination, :mood, :age, :status)
  end
end
