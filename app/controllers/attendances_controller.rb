class AttendancesController < ApplicationController
  before_action :set_travel, only: [:create]

  def create
    @attendance = @travel.attendances.new(user: current_user)

    if @attendance.save
      redirect_to @travel, notice: 'Ta demande de participation a bien été envoyée'
    else
      redirect_to @travel, alert: 'Veuillez recommander votre réservation'
    end
  end

  def update
  end

  private

  def set_travel
    @travel = Travel.find(params[:travel_id])
  end
end
