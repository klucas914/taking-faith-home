class AddWeeklyResourcesToReadings < ActiveRecord::Migration[5.0]
  def change
    add_reference :readings, :weekly_resources, foreign_key: true
  end
end
