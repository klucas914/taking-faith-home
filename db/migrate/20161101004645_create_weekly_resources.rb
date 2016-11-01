class CreateWeeklyResources < ActiveRecord::Migration[5.0]
  def change
    create_table :weekly_resources do |t|
      t.text :creative_response
      t.text :memory_verse
      t.text :mealtime_prayer
      t.text :season_description

      t.timestamps
    end
  end
end
