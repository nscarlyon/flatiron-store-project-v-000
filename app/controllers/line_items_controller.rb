class LineItemsController < ApplicationController

def create
  item = Item.find(params[:item_id])

  if current_user.current_cart.nil?
    current_user.current_cart = Cart.new
  end
    current_user.current_cart.add_item(item.id)
    current_user.save
    redirect_to cart_path(current_user.current_cart)
  end

end
