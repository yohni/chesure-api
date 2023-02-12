class Product < ApplicationRecord
  belongs_to :product_type

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
