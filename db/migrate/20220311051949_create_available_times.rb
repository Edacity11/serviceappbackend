class CreateAvailableTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :available_times do |t|
      t.string :time
      t.references :available_date, null: false, foreign_key: true

      t.timestamps
    end
  end
end
