class Exercise < ActiveRecord::Base
	has_many :exercise_instances, dependent: :destroy
  	has_many :stations, through: :exercise_instances
end
