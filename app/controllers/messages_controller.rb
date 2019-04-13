class MessagesController < ApplicationController
  def index
    @messages = ["こんにちは", "ごきげんよう", "おやすみなさい"]
  end
end
