class TripImage < ApplicationRecord
  belongs_to :trip

  before_save :set_gps_location
  mount_uploader :image, ImageUploader

  acts_as_mappable :default_units => :kms,
    :default_formula => :sphere

  def set_gps_location
    return unless self.try(:image).try(:path)
    coordinates = ReadPhotoCoordinates.call(self.image.path)
    self.lat = coordinates[:latitude]
    self.lng = coordinates[:longitude]
  end

  def coords
    [lat, lng]
  end
end
