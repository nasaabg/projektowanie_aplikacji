require "administrate/base_dashboard"

class TripImageDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    trip: Field::BelongsTo,
    id: Field::Number,
    image: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    lat: Field::Number.with_options(decimals: 2),
    lng: Field::Number.with_options(decimals: 2),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :trip,
    :id,
    :image,
    :created_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :trip,
    :id,
    :image,
    :created_at,
    :updated_at,
    :lat,
    :lng,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :trip,
    :image,
    :lat,
    :lng,
  ].freeze

  # Overwrite this method to customize how trip images are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(trip_image)
  #   "TripImage ##{trip_image.id}"
  # end
end
