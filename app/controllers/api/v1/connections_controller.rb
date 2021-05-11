class Api::V1::ConnectionsController < ApplicationController
    def index 
        connections = Connection.all
        render json: connections
    end

    def show
        connection = Connection.find(params[:id])
        render json: connection 
      end
  
    def create 
        connection = Connection.create(connection_params)
        render json: connection

    end 

    def destroy
        connection = Connection.find(params[:id])
        connection.destroy!
        render json: {}
      end
    
      def update
        connection = Connection.find(params[:id])
        connection.update!(connection_params)
        render json: connection
      end



    private

    def connection_params
        params.require(:connection).permit(:liked_id, :liker_id, :blocked, :initiated, :matched) 
    end 
end
