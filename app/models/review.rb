class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :content, length: { maximum: 140 }
  validates :content, length: { minimum: 5 }
  validates :rating, presence: true
  validates :rating, inclusion: { in: (0..5) }
  validates :rating, numericality: { only_integer: true }

end
