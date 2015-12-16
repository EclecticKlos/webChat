class MessagesController < ApplicationController

  def index
    @message = Message.new
    @messages = Message.all.order('created_at ASC')
    @conversation_id = @messages[0].conversation_id
    render "_message"
  end

  def add
    @message = Message.new
    message = Message.create(:body => params[:message][:body])
    message.conversation_id = 1
    message.user_id = 6
    message.save
    @messages = Message.all.order('created_at ASC')
    render "_message"
  end

end
