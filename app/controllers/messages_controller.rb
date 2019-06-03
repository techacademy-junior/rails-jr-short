class MessagesController < ApplicationController
  def index
    @messages = Message.all.order(created_at: :asc)
    @message = Message.new
  end
end