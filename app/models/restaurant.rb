class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates_associated :reviews
  validates :name, presence: true, allow_blank: false
  validates :address, :category, presence: true
  validates :category, inclusion: {
    in: %w[chinese italian japanese french belgian]
  }
end
