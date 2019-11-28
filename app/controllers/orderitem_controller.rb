class OrderitemController < ApplicationController
  def create
      amount = 0
      current_user.cart.items.each do |item|
        amount += item.price
      end
      @amount = (amount * 100).round

      customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
      })

      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: @amount,
        description: 'Rails Stripe customer',
        currency: 'eur',
      })

      order = Order.new(user: current_user, items: current_user.cart.items)
      current_user.cart.items.each do |item|
        Itemcart.find_by(cart: current_user.cart, item: item).destroy
      end
      order.save
      flash[:success] = "Votre commande a bien été prise en compte"
      redirect_to root_path

      rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to root_path
  end
end
