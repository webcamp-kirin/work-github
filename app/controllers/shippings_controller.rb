class ShippingsController < ApplicationController
  
  def create
    @address = Shipping.new(address_params)
    @address.customer_id = current_customer.id
    if @address.save
      redirect_to shippings_path
    else
       @addresses = current_customer.shippings.page(params[:page]).per(3)
      render :index
    end
  end

  def index
    @address = Shipping.new
    @addresses = current_customer.shippings.page(params[:page]).per(3)
  end

  def edit
    @address = Shipping.find(params[:id])
  end

  def update
    @address = Shipping.find(params[:id])
    if @address.update(address_params)
      redirect_to shippings_path
    else
      render :edit
    end
  end

  def destroy
    @address = Shipping.find(params[:id])
    @address.destroy
    redirect_to shippings_path
  end

  private

  def address_params
    params.require(:shipping).permit(:postal_code, :address, :name)
  end
  
end
