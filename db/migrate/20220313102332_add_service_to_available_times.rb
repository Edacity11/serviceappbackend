class AddServiceToAvailableTimes < ActiveRecord::Migration[7.0]
  def change
    add_reference :available_times, :service, foreign_key: true
  end
end
