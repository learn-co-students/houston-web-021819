class SessionsController < ApplicationController

    skip_before_action :authenticate

    # Serve the sign in form
    def new

    end

    # Handle the submission of the sign in form
    def create
        @user = User.find_by(name: params[:username])
        if @user.authenticate(params[:password])
            session[:current_user_id] = @user.id
        end
    end

    def destroy
        reset_session
        redirect_to '/sessions/new'
    end

end