class Experience < ApplicationRecord
  belongs_to :city
  belongs_to :category
  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  acts_as_favoritable
end
