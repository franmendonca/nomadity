class Category < ApplicationRecord
  validates :name, :ref, presence: true, uniqueness: true
  has_many :experiences
  has_one_attached :photo
end
