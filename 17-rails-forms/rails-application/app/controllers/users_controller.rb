class UsersController < ApplicationController

    skip_before_action :verify_authenticity_token  

    # Forms

    def edit 
        @user = User.find(params[:id])
        @users = User.all
    end

    def new
        @user = User.new
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
        # Using a string: '/users/:user_id',  
        # Using a path helper: user_path(user),
        # Using an object: user
    end 

    def add_absence
        user = User.find(params[:id])
        user.absences ||= 0
        user.absences += 1
        user.save
        redirect_to User
        # Using a string: '/users',  
        # Using a path helper: users_path,
        # Using an object: User
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
