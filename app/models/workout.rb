class Workout < ActiveRecord::Base
	has_many :stations, dependent: :destroy
	validates :title, presence: true,
		length: { minimum: 5 }

	before_save :uppercase_name

	private

	  # Uppercases entire name string
	  def uppercase_name
	    self.title = title.split.map(&:capitalize).join(' ')
	    self.park_name = park_name.split.map(&:capitalize).join(' ')
	  end
end
