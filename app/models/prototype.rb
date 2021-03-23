class Prototype < ApplicationRecord
  validates :title, presence: true
  validates :image, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true

  has_one_attached :image
  belongs_to :user
  has_many :comments
end
