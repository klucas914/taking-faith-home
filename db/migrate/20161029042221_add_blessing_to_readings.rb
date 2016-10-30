class AddBlessingToReadings < ActiveRecord::Migration[5.0]
  def change
    add_column :readings, :blessing, :text
    add_column :readings, :discuss, :text
    add_column :readings, :prayer, :text
  end
end
