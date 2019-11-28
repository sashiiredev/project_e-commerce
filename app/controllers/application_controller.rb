class ApplicationController < ActionController::Base
  before_action :current_cart

private
  def current_cart
     if current_user && current_user.cart == nil
      @current_cart = Cart.create(user: current_user)
      current_user.update(cart: @current_cart)
    end
  end
  
end
