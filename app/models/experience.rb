class Experience < ApplicationRecord
  belongs_to :city
  belongs_to :category
  has_many_attached :photos

  acts_as_favoritable
end
