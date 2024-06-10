class MessagesController < ApplicationController
  def create
    if params[:travel_id]
      create_message_for_travel
    else
      create_message_for_chatroom
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def create_message_for_travel
    @travel = Travel.find(params[:travel_id])
    @message = Message.new(message_params)
    @message.travel = @travel
    @message.user = current_user
    if @message.save
      TravelChannel.broadcast_to(
        @travel,
        message: render_to_string(partial: "messages/message", locals: { message: @message }),
        sender_id: @message.user.id
      )
      head :ok
    else
      render "travels/chatroom", status: :unprocessable_entity
    end
  end

  def create_message_for_chatroom
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        message: render_to_string(partial: "messages/message", locals: { message: @message }),
        sender_id: @message.user.id
      )
      head :ok
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end
end
