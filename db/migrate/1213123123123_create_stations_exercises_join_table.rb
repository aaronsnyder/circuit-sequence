class CreateStationsExercisesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :stations_exercises do |t|
      t.integer :stations_id
      t.integer :exercises_id
    end

    add_index :stations_exercises, [:stations_id, :exercises_id]
  end

  def self.down
    drop_table :stations_exercises
  end
end