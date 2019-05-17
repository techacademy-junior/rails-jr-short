class MessagesController < ApplicationController
  
  def index
    @messages = Message.all.order(created_at: :asc)
    @message = Message.new
  end
  
  def create
    @message = Message.new(message_params)

    if @message.save
      flash[:success] = 'Message が正常に投稿されました'
      redirect_to root_url
    else
      @messages = Message.all.order(created_at: :asc)
      flash.now[:danger] = 'Message が投稿されませんでした'
      render :index
    end
  end
  
  private

  def message_params
    params.require(:message).permit(:content)
  end
end