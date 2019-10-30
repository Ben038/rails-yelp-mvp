class Restaurant < ApplicationRecord
  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  has_many :reviews, dependent: :destroy
  validates_associated :reviews
  validates :name, presence: true, allow_blank: false
  validates :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
