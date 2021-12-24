class MessagesController < ApplicationController
  before_action :set_varaibles, only: [:create]
  def new 
    @message = Message.new
  end

  def create 
    # @message = @user.messages.build(message_params)
    # @convo.messages << @message
    @message = @conv.create_message(message_params)
    if @message.save 
      redirect_to user_conversation_path(@convo.user, @convo)
    else
      binding.pry
      redirect_to user_conversation_path(@convo.user, @convo)
      flash[:alert] = 'Incorrect'
    end
  end 

  private 

  def set_varaibles
    @user = User.find(params[:user_id])
    @convo = Conversation.find(params[:conversation_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
