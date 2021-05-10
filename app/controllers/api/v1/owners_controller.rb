class Api::V1::OwnersController < ApplicationController
    def index 
        owners = Owner.all
        render json: owners
    end

    def show
        owner = Owner.find(params[:id])
        render json: owner 
      end
  
    def create 
        owner = Owner.create(owner_params)
        render json: owner

    end 

    def destroy
        owner = Owner.find(params[:id])
        owner.destroy!
        render json: {}
      end
    
      def update
        owner = Owner.find(params[:id])
        owner.update!(owner_params)
        render json: owner
      end



    private

    def owner_params
        params.require(:owner).permit(:name, :email, :password, :birthdate, :gender) 
    end 
end
