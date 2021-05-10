class Api::V1::MessagesController < ApplicationController
    def index 
        messages = Message.all
        render json: messages
    end

    def show
        message = Message.find(params[:id])
        render json: message 
      end
  
    def create 
        message = Message.create(message_params)
        render json: message

    end 

    def destroy
        message = Message.find(params[:id])
        message.destroy!
        render json: {}
      end
    
      def update
        message = Message.find(params[:id])
        message.update!(message_params)
        render json: message
      end



    private

    def message_params
        params.require(:message).permit(:conversation_id) 
    end 
end
