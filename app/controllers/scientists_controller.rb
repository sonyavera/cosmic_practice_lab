class ScientistsController < ApplicationController
    before_action :set_scientist, only: [:show, :edit, :update, :destroy]

    def index
        @scientists = Scientist.all
    end

    def show
    end

    def new
        @scientist = Scientist.new
    end

    def create
        @scientist = Scientist.new(scientist_params)
        if @scientist.save
            redirect_to @scientist
        else
            flash[:my_errors] = @scientist.errors.full_messages
            redirect_to new_scientist_path(@scientist)
        end
    end


    def edit
    end

    def update
        @scientist.update(scientist_params)
        if @scientist.save
            redirect_to @scientist
        else
            flash[:my_errors] = @scientist.errors.full_messages
            redirect_to edit_scientist_path(@scientist)
        end
    end

    def destroy
        @scientist.destroy
        flash[:notice] = "Scientist deleted."
        redirect_to @scientist
    end


    private

    def set_scientist
        @scientist = Scientist.find(params[:id])
    end

    def scientist_params
        params.require(:scientist).permit(:name, :field_of_study)
    end
end
