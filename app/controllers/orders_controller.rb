class OrdersController < ApplicationController
  def new
  end

  def confirm
    
  end

  def create
  end

  def index
    @orders = current_customer.orders.page(params[:page]).per(10).reverse_order
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_details
  end

  def thx
  end
end
