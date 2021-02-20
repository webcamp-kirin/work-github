class Admins::ItemsController < ApplicationController
  def index
    @items = Item.all
    @genres = Genre.all
  end

  def new
    @item = Item.new
    @genres = Genre.all
  end

  def create
    @item = Item.new(item_params)
    # @item.user_id = current_user.id
    # byebug
    if @item.save
    redirect_to admins_items_path
    else
    render :new
    end
  end

  def show
     @item = Item.find(params[:id])
  end

  def edit
    @genres = Genre.all
    @item = Item.find(params[:id]) 
  end

  def update
    @item = Item.find(params[:id]) 
    @item.update(item_params)
    redirect_to admins_items_path
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :description, :price, :genre_id, :image, :is_active, :created_at, :updated_at)
  end
end
