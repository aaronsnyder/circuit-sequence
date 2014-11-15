class Workout < ActiveRecord::Base
	has_many :stations, dependent: :destroy
	validates :title, presence: true,
		length: { minimum: 5 }
end
