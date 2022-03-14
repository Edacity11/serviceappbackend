class Booking < ApplicationRecord
  belongs_to :available_date
  belongs_to :available_time
  belongs_to :user
  belongs_to :service
end
