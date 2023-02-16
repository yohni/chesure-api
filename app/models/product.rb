class Product < ApplicationRecord
  has_one :product_type

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
