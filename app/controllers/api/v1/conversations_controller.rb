class Api::V1::ConversationsController < ApplicationController
    def index 
        conversations = Conversation.all
        render json: conversations
    end

    def show
        conversation = Conversation.find(params[:id])
        render json: conversation 
      end
  
    def create 
        conversation = Conversation.create(conversation_params)
        render json: conversation

    end 

    def destroy
        conversation = Conversation.find(params[:id])
        conversation.destroy!
        render json: {}
      end
    
      def update
        conversation = Conversation.find(params[:id])
        conversation.update!(conversation_params)
        render json: conversation
      end



    private

    def conversation_params
        params.require(:conversation).permit(:connection_id) 
    end 
end
