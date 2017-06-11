class ReadPhotoCoordinates < Struct.new(:photo_path)
  def self.call(photo_path)
    new(photo_path).call
  end

  def call
    data = Exif::Data.new(photo_path)
    return {} if data[:gps].empty?

    lat_ref = data[:gps][:gps_latitude_ref] == "S" ? -1 : 1
    lng_ref = data[:gps][:gps_longitude_ref] == "W" ? -1 : 1

    {
      latitude: (data.gps_latitude * lat_ref),
      longitude: (data.gps_longitude * lng_ref)
    }
  end

end
