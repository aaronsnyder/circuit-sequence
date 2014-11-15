class Station < ActiveRecord::Base
  belongs_to :workout
  has_and_belongs_to_many :exercises
end
