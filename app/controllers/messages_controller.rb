class MessagesController < ApplicationController
  def index
    @messages = Message.order(id: :asc)
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    message = Message.create!(message_params)
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    message = Message.find(params[:id])
    message.update!(message_params)
  end

  def destroy
  end

  private

  def message_params
    params.require(:message).permit(:title, :content)
  end
end
