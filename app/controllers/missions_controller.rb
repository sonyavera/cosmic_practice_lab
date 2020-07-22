class MissionsController < ApplicationController
    # before_action :set_mission, only: [:create]

    def new
        @mission = Mission.new
    end

    def create
        @mission = Mission.new(mission_params)
        if @mission.save
            redirect_to scientist_path(@mission.scientist)
        else
            flash[:error_message] = @mission.errors.full_messages
            redirect_to new_mission_path(@mission)
        end
    end


    private

    def set_mission
        @mission = Mission.find(params[:id])
    end

    def mission_params
        params.require(:mission).permit(:name, :scientist_id, :planet_id)
    end


end
