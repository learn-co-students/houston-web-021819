class ApplicationController < Sinatra::Base

    set :views, 'app/views'
    set :method_override, true

    # Interface (Forms)
    get '/users/new' do 
        erb :new
    end
    get '/users/:id/edit' do 
        @user = User.find(params[:id])
        erb :edit
    end

    # Read
    get '/users' do
        @users = User.all
        erb :index
    end

    get '/user/:id' do
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
        redirect "/users/#{user.id}"
    end

    # Delete
    delete '/users/:id' do 
        user = User.find(params[:id]) 
        user.delete
        redirect "/users"
    end

    

end