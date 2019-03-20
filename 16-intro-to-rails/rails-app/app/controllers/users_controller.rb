class UsersController < ApplicationController

    skip_before_action :verify_authenticity_token  

    # Forms

    def edit 
        @user = User.find(params[:id])
        @users = User.all
    end

    def new
    end

    # Create
    def create 
        user = User.create(user_params[:user])
        redirect_to user
    end

    # Read
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    # Update
    
    def update
        user = User.find(params[:id])
        user.update(user_params[:user])
        redirect_to user
    end


    # Destroy
    def destroy 
        @user = User.find(params[:id])
        @user.destroy
        redirect_to '/users'
    end

    def user_params
        params.permit(user: [ :address, :phone_number, :name ] )
    end

end
