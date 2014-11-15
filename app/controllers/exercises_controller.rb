class ExercisesController < ApplicationController

	http_basic_authenticate_with name: "kasey", password: "secret"

	def new
	  @exercise = Exercise.new
	end

	def create
	  @exercise = Exercise.new(exercise_params)

	  if @exercise.save
	  	redirect_to @exercise
	  else
	    render 'new'
	  end
	end

	def show
	  @exercise = Exercise.find(params[:id])
	end

	def edit
	  @exercise = Exercise.find(params[:id])
	end

	def update
	  @exercise = Exercise.new(exercise_params)

	  if @exercise.save
	  	redirect_to @exercise
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @exercise = Exercise.find(params[:id])
	  @exercise.destroy

	  redirect_to exercises_path
	end

	def index
	  @exercises = Exercise.all
	end

	private
	def exercise_params
		params.require(:exercise).permit(:name)
	end

end
