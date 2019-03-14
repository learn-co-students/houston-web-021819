class PetsController < ApplicationController

    set :views, 'app/views/pets'
    set :method_override, true

    # Interface (Forms)
    get '/pets/new' do 
        @users = User.all
        erb :new
    end

    get '/pets/:id/edit' do 
        @pet = Pet.find(params[:id])
        erb :edit
    end

    # Read
    get '/pets' do
        @pets = Pet.all
        erb :index
    end

    get '/pets/:id' do
        @pet = Pet.find(params[:id]) 
        erb :show
    end
 
    # Create
    post '/pets' do 
        Pet.create(params[:pet])
        redirect "/pets"
    end

    # Update
    patch '/pets/:id' do 
        @pet = Pet.find(params[:id]) 
        @pet.update(params[:pet])
        redirect "/pets/#{@pet.id}"
    end

    # Delete
    delete '/pets/:id' do 
        pet = Pet.find(params[:id]) 
        pet.delete
        redirect "/pets"
    end 

end