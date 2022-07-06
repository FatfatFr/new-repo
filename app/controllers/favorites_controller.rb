class FavoritesController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @favorite = Favorite.new(user: current_user, item: @item)
    if @favorite.save
      redirect_to item_path(@item)
    else
      redirect_to items_path
    end
  end
end
