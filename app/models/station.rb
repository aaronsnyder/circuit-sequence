class Station < ActiveRecord::Base
  belongs_to :workout
  has_many :exercise_instances, dependent: :destroy
  has_many :exercises, through: :exercise_instances
  default_scope {order('created_at asc')}

  before_save :uppercase_name

  private

    # Uppercases entire name string
    def uppercase_name
      self.name = name.split.map(&:capitalize).join(' ')
      self.location = location.split.map(&:capitalize).join(' ')
    end
end