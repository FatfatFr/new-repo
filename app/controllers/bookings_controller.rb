class BookingsController < ApplicationController

  def show
    @booking = Booking.find_by(item: params[:item_id], user:  current_user)
  end

  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.item = @item
    @booking.user = current_user
    if @booking.save
      render :show
    else
      redirect_to item_path(@item)
    end
  end

private

def booking_params
  params.require(:booking).permit(:start_date, :end_date, :full_price)
end


end
