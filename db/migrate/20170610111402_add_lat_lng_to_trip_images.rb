class AddLatLngToTripImages < ActiveRecord::Migration[5.0]
  def change
    add_column :trip_images, :lat, :float
    add_column :trip_images, :lng, :float
  end
end
