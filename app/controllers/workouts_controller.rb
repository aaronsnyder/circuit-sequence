class WorkoutsController < ApplicationController

	http_basic_authenticate_with name: "kasey", password: "secret"

	def new
	  @workout = Workout.new
	end

	def create
	  @workout = Workout.new(workout_params)

	  if @workout.save
	  	redirect_to @workout
	  else
	    render 'new'
	  end
	end

	def show
	  @workout = Workout.find(params[:id])
	end

	def edit
	  @workout = Workout.find(params[:id])
	end

	def update
	  @workout = Workout.new(workout_params)

	  if @workout.save
	  	redirect_to @workout
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @workout = Workout.find(params[:id])
	  @workout.destroy

	  redirect_to workouts_path
	end

	def index
	  @workouts = Workout.all
	end

	private
	def workout_params
		params.require(:workout).permit(:title, :park_name)
	end

end
