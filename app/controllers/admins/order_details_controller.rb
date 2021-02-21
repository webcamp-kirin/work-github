class Admins::OrderDetailsController < ApplicationController
  def update
     @order = Order.find(params[:id])
     @customer = Customer.find(params[:id])
     @items = Item.all
     @order_details = @order.order_details
     
    if @order.update(order_params)
     redirect_to admins_order_path(@order)
    else
     render :'order/show'
    end
  end
end
