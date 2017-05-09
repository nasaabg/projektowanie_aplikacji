class TripImage < ApplicationRecord
  belongs_to :trip
  mount_uploader :image, ImageUploader
end
