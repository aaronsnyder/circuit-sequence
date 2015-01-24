class StationsController < ApplicationController

	def create
		@workout = Workout.find(params[:workout_id])
		@station = @workout.stations.create(station_params)
		redirect_to workout_path(@workout)
	end

	def destroy
		@workout = Workout.find(params[:workout_id])
		@station = @workout.stations.find(params[:id])
		@station.destroy
		redirect_to workout_path(@workout)
	end

	private
		def station_params
		params.require(:station).permit(:name, :location)
	end
end
