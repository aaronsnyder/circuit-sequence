class CreateExerciseInstances < ActiveRecord::Migration
  def change
    create_table :exercise_instances do |t|
      t.integer :station_id
      t.integer :exercise_id

      t.timestamps
    end
    add_index :exercise_instances, :station_id
    add_index :exercise_instances, :exercise_id
    add_index :exercise_instances, [:station_id, :exercise_id], unique: true
  end
end
