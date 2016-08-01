class CartsController < ApplicationController

  def show
    @current_cart = current_user.current_cart
  end

  def checkout
    @current_cart = current_user.current_cart

    @current_cart.new_inventory

    @current_cart.destroy
    redirect_to cart_path(@current_cart)
  end

end
