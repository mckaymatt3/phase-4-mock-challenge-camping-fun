class CampersController < ApplicationController

    def index
        # binding.pry
        @campers = Camper.all
        render json: @campers
    end

    def show
        # binding.pry
        @camper = Camper.find(params[:id])
        render json: @camper, serializer: CamperWithActivitiesSerializer, status: :ok
    end

    def create
        @camper = Camper.create(campers_params)
        if @camper.valid? 
            render json: @camper, status: :created
        else
            binding.pry
            render json: {errors: @camper.errors.full_messages}, status: :unprocessable_entity 
        end
    end

    private

    def campers_params
        params.permit(:name, :age)
    end


end
