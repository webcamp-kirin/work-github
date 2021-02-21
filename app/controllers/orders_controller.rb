class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def confirm
    @order = Order.new
    @cart_items = current_customer.cart_items
    @order.payment = params[:order][:payment]
    if params[:order][:address_option] == "0"
    @order.postal_code = current_customer.postal_code
    @order.address = current_customer.address
    elsif params[:order][:address_option] == "1"
    @sta = params[:order][:order_address].to_i
    @order_address = Address.find(@sta)
    @order.postal_code = @order_address.postal_code
    @order.order_address = @order_address.address
    @order.name = @order_address.name

    elsif params[:order][:address_option] == "2"
    @order.postal_code = params[:order][:postal_code]
    @order.order_address = params[:order][:order_address]
    end
    # render :new if @order.invalid?
  end

  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
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
    params.require(:order).permit(:address, :payment, :postal_code, :address_name, :total_price, :postage)
  end
end
