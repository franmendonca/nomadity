class City < ApplicationRecord
  has_many :experiences
  has_many :categories, through: :experiences
end
