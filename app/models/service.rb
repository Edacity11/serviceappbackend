class Service < ApplicationRecord
  include Rails.application.routes.url_helpers

  belongs_to :category

  has_many :available_dates, dependent: :destroy
  has_many :available_times, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :image

  def image_url
    #Get the URL of the associated image
    image.attached? ? url_for(image) : nil
  end
end
