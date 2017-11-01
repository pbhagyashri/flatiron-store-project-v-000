class CartsController < ApplicationController
  def checkout

    cart = Cart.find params[:id]
    cart.status = "submitted"

    cart.line_items.each do |line_item|
      line_item.item.inventory -= line_item.quantity
      line_item.item.save
    end
    cart.save

    cart.destroy
    redirect_to cart_path(cart)
  end
end
