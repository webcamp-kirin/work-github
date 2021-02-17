class Admins::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    # @item.user_id = current_user.id
    # byebug
    @item.save
    redirect_to admins_items_path
  end

  def show
  end

  def edit
  end

  def update
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :description, :price, :genre_id, :image, :is_active, :created_at, :updated_at)
  end
end
