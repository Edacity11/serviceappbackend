class Category < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_many :services, dependent: :destroy
  has_one_attached :image

  def image_url
    #Get the URL of the associated image
    image.attached? ? url_for(image) : nil
  end
end
