class Experience < ApplicationRecord
  belongs_to :city
  belongs_to :category

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  acts_as_favoritable
end
