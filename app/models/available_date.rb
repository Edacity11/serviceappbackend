class AvailableDate < ApplicationRecord
  belongs_to :service
  has_many :available_times, dependent: :destroy
end
