class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @travels = Travel.where.not(user: current_user)
  end
end
