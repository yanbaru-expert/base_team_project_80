class MessagesController < ApplicationController
  def index
    @messages = Message.order(id: :asc)
  end

  def show
  end

  def new
    @message = Message.new
  end

  def create
    message = Message.create!(message_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def message_params
    params.require(:message).permit(:title, :content)
  end
end
