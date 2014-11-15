class StationExercise < ActiveRecord::Base
	belongs_to: station
	belongs_to: exercise
end
