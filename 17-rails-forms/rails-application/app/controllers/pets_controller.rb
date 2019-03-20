class PetsController < ApplicationController
    skip_before_action :verify_authenticity_token  

   before_action :define_current_pet
   
   def create
       Pet.create(pet_params)
       redirect_to pets_path
   end
   
   def index
       @pets = Pet.all
   end
   
   def update
       @pet.update(pet_params)
       redirect_to @pet
   end
   
   def destroy
       @pet.destroy
       redirect_to pets_path
   end
   
   def define_current_pet
       if params[:id]
           @pet = Pet.find(params[:id])
       else
           @pet = Pet.new
       end
   end
   
   def pet_params
       params.require(:pet).permit(:name, :breed)
   end
end
