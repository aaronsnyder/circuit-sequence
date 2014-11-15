class CreateStationExercises < ActiveRecord::Migration
  def change
    create_table :station_exercises do |t|
      t.datetime :created_date

      t.timestamps
    end
  end
end
