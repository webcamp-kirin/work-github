class Admins::OrdersController < ApplicationController
  def index
     @order = Order.all.page(params[:page]).per(10)
  end

  def show
  end
  
   private
  def order_prams
    params.require(:order).permit(:postal_code, :address, :address_name, :postage, :payment, :order_status, :total_payment, :created_at)
  end  
end
