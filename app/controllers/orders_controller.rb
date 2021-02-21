class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def confirm
    @order = Order.new(order_params)
    # render :new if @order.invalid?
  end

  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to thx_path
    # render :new and return if params[:back] || !@order.save
    # redirect_to @order
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

  private
  def order_params
    params.require(:order).permit(:postal_code, :adress, :adress_name, :postage, :payment, :order_status, :total_payment)
  end
end
