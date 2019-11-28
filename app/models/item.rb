class Item < ApplicationRecord
  validates :title, presence: true
  validates :description, length: { minimum: 10, maximum: 200 }

  has_many :orderitems
  has_many  :orders, through: :orderitems



  has_many :itemcarts
  has_many :carts, through: :itemcarts
end
