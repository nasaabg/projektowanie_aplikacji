class Trip < ApplicationRecord
  has_many :trip_users, dependent: :destroy
  has_many :users, through: :trip_users
  has_many :trip_images, dependent: :destroy


  def trip_images_coords
    trip_images.map { |image| image.coords }
  end

  def trip_images_coords_str
    trip_images_coords.map { |x| x.join(",") if x.any?}.compact.join("|")
  end

  def images_coors_for_google
    trip_images_coords.map do |coords|
      {lat: coords.first, lng: coords.last}
    end
  end
end
