class Category < ApplicationRecord
  validates :name, :ref, presence: true, uniqueness: true
  has_many :experiences
end
