class DashboardController < ApplicationController
  def dashboard
    @travels = Travel.where(user: current_user)
    @searches = current_user.searches

  end

  def my_searches
    @searches = current_user.searches
  end

  def my_candidatures
  #  @candidatures = current_user.attendances
  end

  def my_travels
    @travels = Travel.where(user: current_user)
  end
end
