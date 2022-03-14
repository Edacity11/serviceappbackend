class AvailableTime < ApplicationRecord
  belongs_to :available_date
  belongs_to :service
end
