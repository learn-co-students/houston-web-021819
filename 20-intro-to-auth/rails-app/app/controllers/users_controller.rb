class UsersController < ApplicationController

    skip_before_action :authenticate, only: [ :new, :create ]

    # Forms

    def edit 
        @user = User.find(params[:id])
        if(flash[:user_attributes])
            @user.assign_attributes(flash[:user_attributes])
            @user.valid?
        end
        @errors = @user.errors.messages
        @users = User.all
    end

    def new
        @errors = flash[:errors] || {}
        @user = User.new
    end

    # Create
    def create 
        user = User.new(user_params[:user])
        if user.valid?
            user.save
            redirect_to user
        else
            # Something went wrong
            flash[:errors] = user.errors.messages
            redirect_to new_user_path
        end
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
        user.assign_attributes(user_params[:user])
        if user.valid?
            user.save
        else
            # Tell the user that something went wrong
            flash[:user_attributes] = user.attributes
        end
        
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
        params.permit(user: [ :address, :phone_number, :name, :absences ] )
    end

end
