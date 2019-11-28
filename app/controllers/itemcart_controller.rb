class ItemcartController < ApplicationController
  def create
    @itemcartforid = Itemcart.create(cart: current_user.cart, item: Item.find(params[:item_id]))
    respond_to do |format|
      format.html { redirect_to root_path}
      format.js {}
    end
  end

  def destroy
    @itemcart = Itemcart.find(params[:id])
    @itemcart.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(current_user.cart.id) }
      format.js { }
    end
  end
end
