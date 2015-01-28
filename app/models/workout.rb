class Workout < ActiveRecord::Base
	has_many :stations, dependent: :destroy
	validates :name, presence: true, length: { minimum: 5 }

	before_save :uppercase_name

	private

	  # Uppercases entire name string
	  def uppercase_name
	    self.name = name.split.map(&:capitalize).join(' ')
	    self.location = location.split.map(&:capitalize).join(' ')
	  end
end
