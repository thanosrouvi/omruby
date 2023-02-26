class MessagesController < ApplicationController

    def create
        @message = current_customer.messages.create(body: msg_params[:body], room_id: params[:room_id])
    end
    private
    def msg_params
        params.require(:message).permit(:body)
    end
end
