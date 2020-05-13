class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
    CATEGORY = ["Chinese", "Italian", "Japanese", "French", "Belgian"]
  validates :address, presence: true
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
