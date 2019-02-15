class Product < ApplicationRecord
  belongs_to :category
  has_many :comments, dependent: :destroy
  has_many :rattings, dependent: :destroy
  has_many :order_items, dependent: :destroy

  validates :category_id, presence: true
  validates :name, presence: true, length: {maximum: 50}
  validates :price, presence: true, numericality: true
  validates :description, presence: true,
   length: {maximum: 255}
  validates :quantity, presence: true, numericality: {only_integer: true}
end
