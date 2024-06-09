class UsersController < ApplicationController
  def show
    @user = current_user
    @search_url = params[:search_url]
  end
end
