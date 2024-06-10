class TravelChannel < ApplicationCable::Channel
  def subscribed
    travel = Travel.find(params[:id])
    stream_for travel
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
