class Api::V1::PetsController < ApplicationController
  def index
    pets = Pet.all
    render json: PetSerializer.new(pets)
  end

    def create
    pet = Pet.new(pet_params)
        if pet.save
        render json: pet, status: :accepted
        else 
        render json: {errors: pet.errors.full_messages}, status: :unprocessible_entity
        end
    end

  private

  def pet_params
    params.require(:pet).permit(:name, :desc, :image_url)
  end

end
