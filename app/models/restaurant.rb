class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
    CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :address, presence: true
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
