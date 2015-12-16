class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :get_conversations
  def get_conversations
    @conversations = Conversation.all
    @user = User.find_by id: @conversations[0].recipient_id
  end
end
