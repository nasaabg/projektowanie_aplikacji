class ReadPhotoCoordinates < Struct.new(:photo_path)
  def self.call(photo_path)
    new(photo_path).call
  end

  def call
    data = Exif::Data.new(photo_path)
    return {} unless data[:gps]

    {
      latitude: data.gps_latitude,
      longitude: data.gps_longitude
    }
  end

end
