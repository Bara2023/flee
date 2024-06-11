class AttendancesController < ApplicationController
  before_action :set_travel
  before_action :set_attendance, only: [:accept, :decline]

  def create
    @attendance = @travel.attendances.new(user: current_user)

    if @attendance.save
      redirect_to @travel, notice: 'Ta demande de participation a bien été envoyée'
    else
      redirect_to @travel, alert: 'Veuillez recommander votre réservation'
    end
  end

  def accept
    @attendance.confirmed!
    redirect_to dashboard_travels_path, notice: 'La candidature a été acceptée.'
  end

  def decline
    @attendance.rejected!
    redirect_to dashboard_travels_path, notice: 'La candidature a été refusée.'
  end


  private

  def set_travel
    @travel = Travel.find(params[:travel_id])
  end

  def set_attendance
    @attendance = @travel.attendances.find(params[:id])
  end
end
