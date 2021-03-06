class UsersController < ApplicationController

    set :views, 'app/views/users'
    set :method_override, true

    # Interface (Forms)
    get '/users/new' do 
        erb :new
    end

    get '/users/:id/edit' do 
        @users = User.all
        @user = User.find(params[:id])
        erb :edit
    end

    # Read
    get '/users' do
        @users = User.all
        erb :index
    end

    get '/users/:id' do
        @user = User.find(params[:id]) 
        erb :show
    end
 
    # Create
    post '/users' do 
        User.create(params[:user])
        redirect "/users"
    end

    # Update
    patch '/users/:id' do 
        @user = User.find(params[:id]) 
        @user.update(params[:user])
        redirect "/users/#{@user.id}"
    end

    # Delete
    delete '/users/:id' do 
        user = User.find(params[:id]) 
        user.destroy
        redirect "/users"
    end 

end