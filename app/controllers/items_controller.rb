class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!

  def index
    @items = Item.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @item = Item.new

  end

  def create
    @item = Item.create(item_params)
    if item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end


  def item_params
    params.require(:item).permit(:name, :category, :description, :available, :price_per_day, :item_photo)
  end

end
