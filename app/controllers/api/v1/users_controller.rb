class Api::V1::UsersController < ApplicationController
    def index 
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user 
      end
  
    def create 
        user = User.create(user_params)
        render json: user

    end 

    def destroy
        user = User.find(params[:id])
        user.destroy!
        render json: {}
      end
    
      def update
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user
      end



    private

    def user_params
        params.require(:user).permit(:name, :birthdate, :gender, :spade, :size, :breed, :owner_id, :longitude, :latitude) 
    end 
end
