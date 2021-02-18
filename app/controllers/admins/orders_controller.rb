class Admins::OrdersController < ApplicationController
  def index
     @orders = Order.all.page(params[:page]).per(10)
     @customer = Customer.find(params[:id])
  end

  def show
     @order = Order.find(params[:id])
     @customer = Customer.find(params[:id])
     @items = Item.all
     @order_details = @order.order_details
  end
  
  private
  def order_prams
    params.require(:order).permit(:postal_code, :address, :address_name, :postage, :payment, :order_status, :total_payment, :created_at)
  end  
  def customer_prams
    params.require(:customer).permit(:last_name, :first_name, :email, :last_name_kana, :first_name_kana, :postal_code, :address, :phone_number, :is_deleted)
  end
  def item_params
    params.require(:item).permit(:name, :description, :price, :genre_id, :image, :is_active, :created_at, :updated_at)
  end
end
