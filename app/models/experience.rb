class Experience < ApplicationRecord
  belongs_to :city
  belongs_to :category

  acts_as_favoritable
end
