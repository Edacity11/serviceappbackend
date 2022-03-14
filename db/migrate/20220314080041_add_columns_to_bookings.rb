class AddColumnsToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :user_name, :string
    add_column :bookings, :date, :string
    add_column :bookings, :time, :string
    add_column :bookings, :service_name, :string
    add_column :bookings, :amount, :string
  end
end
