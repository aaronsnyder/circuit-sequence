class ExerciseInstance < ActiveRecord::Base
	belongs_to :station
 	belongs_to :exercise
 	validates :station_id, presence: true
	validates :exercise_id, presence: true
	default_scope {order('exercise_instances.created_at asc')}
end
