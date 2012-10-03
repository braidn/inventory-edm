class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      flash[:notice] = "Item added"
      redirect_to items_path
    else
      flash[:error] = "Nope"
      render action: "new"
    end
  end
end