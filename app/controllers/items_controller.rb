class ItemsController < ApplicationController
  def index
    @items = Item.all

      if @items.blank?
        @item = Item.new
        redirect_to new_item_path
      else
        render :index
      end
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:item_name, :unit_price, :man_hours,
      :quantity, :man_hours_unit_prise, :amount_tota
    )
  end
end
