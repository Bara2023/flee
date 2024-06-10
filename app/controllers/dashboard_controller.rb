class DashboardController < ApplicationController
  def dashboard
    @travels = Travel.where(user: current_user)
    @searches = current_user.searches

  end

  def my_searches
    @searches = current_user.searches
  end

  def my_candidatures
   @travels = current_user.travels
  end

  def my_travels
    @travels = Travel.where(user: current_user)
  end
end
