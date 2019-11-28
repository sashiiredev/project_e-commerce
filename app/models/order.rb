class Order < ApplicationRecord
  after_create :admin_order_email

  belongs_to :user
  has_many :orderitems
  has_many :items, through: :orderitems

  def admin_order_email
    OrderMailer.admin_order_email(self).deliver_now
  end
end
