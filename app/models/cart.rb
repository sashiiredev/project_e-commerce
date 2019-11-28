class Cart < ApplicationRecord

  belongs_to :user, optional: true
  #has_many :items
  #belongs_to :item, optional: true

  has_many :itemcarts
  has_many :items, through: :itemcarts

end
