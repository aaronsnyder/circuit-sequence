class ExerciseInstancesController < ApplicationController

  def create
  	@exercise_instance = ExerciseInstance.new(exercise_instance_params)
  	@exercise_instance.save
  	redirect_to workout_path(@exercise_instance.station.workout.id)
  end

  private 

  	def exercise_instance_params
			params.require(:exercise_instance).permit(:station_id, :exercise_id)
		end
end
