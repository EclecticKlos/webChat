require 'json'

class ConversationsController < ApplicationController

  def create
    if Conversation.between(params[:sender_id],params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id],params[:recipient_id]).first
    else
      @conversation = Conversation.create(sender_id: params[:sender_id], recipient_id: params[:recipient_id])
    end



    render json: { conversation_id: @conversation.id }
  end


end
