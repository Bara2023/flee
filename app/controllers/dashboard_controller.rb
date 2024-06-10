class DashboardController < ApplicationController
  before_action :set_travels

  def dashboard
   
  end

  def my_searches
    @searches = current_user.searches
  end

  def my_candidatures
    @my_attendances = current_user.attendances
  end

  def my_travels
  end

  private

  def set_travels
    @travels = Travel.where(user: current_user)
  end
end
