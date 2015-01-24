class Station < ActiveRecord::Base
  belongs_to :workout
  has_many :exercise_instances, dependent: :destroy
  has_many :exercises, through: :exercise_instances
  default_scope {order('created_at asc')}

  # Follows a user.
  def addExercise(exercise)
    active_relationships.create(followed_id: other_user.id)
  end

  # Unfollows a user.
  def removeExercise(exercise)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end
end