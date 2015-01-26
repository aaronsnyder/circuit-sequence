class Exercise < ActiveRecord::Base
	has_many :exercise_instances, dependent: :destroy
	has_many :stations, through: :exercise_instances

	before_save :uppercase_name

	private

	  # Uppercases entire name string
	  def uppercase_name
	    self.name = name.split.map(&:capitalize).join(' ')
	  end
end
