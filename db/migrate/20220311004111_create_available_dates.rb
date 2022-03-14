class CreateAvailableDates < ActiveRecord::Migration[7.0]
  def change
    create_table :available_dates do |t|
      t.string :date
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
