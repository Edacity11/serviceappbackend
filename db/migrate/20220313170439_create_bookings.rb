class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :booking_date
      t.string :status
      t.references :available_date, null: false, foreign_key: true
      t.references :available_time, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
