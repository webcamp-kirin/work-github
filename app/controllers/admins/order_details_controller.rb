class Admins::OrderDetailsController < ApplicationController

#   binding.pry
  def update
#   binding.pry
     @order_detail = OrderDetail.find(params[:id])
     
     
    if @order_detail.update(production_status: params[:order_detail][:production_status])
     redirect_to admins_order_path(@order_detail)
    else
     render :'order/show'
    end
  end
  
  
  private
    def order_detail_params
     params.require(:order_detail).permit(:production_status)
    end
end
