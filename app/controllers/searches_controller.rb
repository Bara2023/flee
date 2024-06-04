class SearchesController < ApplicationController
  def index
  end

  private

  def searches_params
    params.require(:search).permit(:photo)
  end
end
