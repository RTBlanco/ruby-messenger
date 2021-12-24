class ConversationsController < ApplicationController
  before_action :set_convo, only: [:show, :edit, :update, :delete]

  def new 
    @convo = Conversation.new
  end

  def create 
    @convo = Conversation.create(convo_params)
  end

  def show 

  end
  
  def edit

  end

  def update
    @convo.update(convo_params)
  end

  def delete 
    @convo.destroy
  end

  private 

  def set_convo 
    @convo = Conversation.find(params[:id])
  end

  def convo_params
    params.require(:user).permit
  end
end
