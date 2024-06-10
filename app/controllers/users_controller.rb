class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @search_url = params[:search_url]
  end
end
