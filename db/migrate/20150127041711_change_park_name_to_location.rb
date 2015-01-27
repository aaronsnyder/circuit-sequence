class ChangeParkNameToLocation < ActiveRecord::Migration
  def change
  	rename_column :workouts, :title, :name
  	rename_column :workouts, :park_name, :location
  end
end
