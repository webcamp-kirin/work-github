class Admins::OrderDetailsController < ApplicationController
  before_action :authenticate_admin!
  def update
     @order = Order.find(params[:id])
     @customer = Customer.find(params[:id])
     @items = Item.all
     @order_details = @order.order_details
     
    if @order_details.update(order_detail_params)
     redirect_to admins_order_path(@order)
    else
     render :'order/show'
    end
  end
  
  private
    def order_detail_params
     params.require(:order_detail).permit(:is_active)
    end
end
