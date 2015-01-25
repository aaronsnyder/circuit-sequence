class Station < ActiveRecord::Base
  belongs_to :workout
  has_many :exercise_instances, dependent: :destroy
  has_many :exercises, through: :exercise_instances
  default_scope {order('created_at asc')}

  before_save :uppercase_name

  # Follows a user.
  def addExercise(exercise)
    active_relationships.create(followed_id: other_user.id)
  end

  # Unfollows a user.
  def removeExercise(exercise)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  private

    # Uppercases entire name string
    def uppercase_name
      self.name = name.split.map(&:capitalize).join(' ')
      self.location = location.split.map(&:capitalize).join(' ')
    end
end