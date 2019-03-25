class PetsController < ApplicationController

   before_action :define_current_pet

   def edit
    @owners = User.all
   end

   def new
    @owners = User.all
   end
   
   def create
        @pet = Pet.new(pet_params)
        if @pet.valid?
            @pet.save
            redirect_to @pet
        else
            flash[:pet_attributes] = @pet.attributes
            redirect_to new_pet_path
        end
   end
   
   def index
       @pets = Pet.all
   end
   
   def update
       @pet.assign_attributes(pet_params)
       if @pet.valid?
            @pet.save
            redirect_to @pet
        else
            flash[:pet_attributes] = @pet.attributes
            redirect_to edit_pet_path(@pet)
        end
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
       
       if(flash[:pet_attributes])
            @pet.assign_attributes(flash[:pet_attributes])
            @pet.valid?
       end
       @errors = @pet.errors.messages
   end
   
   def pet_params
       params.require(:pet).permit(:name, :breed)
   end
end
