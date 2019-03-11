class ApplicationController < Sinatra::Base

    set :views, 'app/views'

    get '/users' do
        @users = User.all
        erb :index
    end

    get '/users/:id' do
        # params[:id] comes from the url
        @user = User.find(params[:id]) 
        erb :show
    end

    post '/users' do 
        User.create(params)
    end

end