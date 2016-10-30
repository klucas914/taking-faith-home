class CreateReadings < ActiveRecord::Migration[5.0]
  def change
    create_table :readings do |t|
      t.string :date
      t.string :week
      t.string :title
      t.string :verse
      t.text :scripture

      t.timestamps
    end
  end
end
