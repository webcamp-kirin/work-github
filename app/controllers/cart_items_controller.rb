class CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
  end

  def create
    @cart_item = current_customer.cart_items.new
    @cart_item.save
    redirect_to cart_items_path
  end

  def update
  end

  def destroy
  end

  def destroy_all
  end
end
