class ItemsController < ApplicationController

  # CALLBACKS
  before_action :set_inventory
  
  def index
    @items = @inventory.items.all
  end

  def new
    @item = @inventory.items.new
  end

  def create
    @item = @inventory.items.new
    @item = @inventory.items.create(item_params)
    if @item.save
      flash[:notice] = "New item created!"
      redirect_to @inventory
    else
      render :new
    end
  end

  def edit
    @item = @inventory.items.find(params[:id])
  end

  def update
    @item = @inventory.items.find(params[:id])
    if @item.update
      flash[:notice] = "Item updated!"
      redirect_to @inventory
    else
      render :edit
    end
  end

  def show
    @items = @inventory.items.all
  end

  def destroy
    @item = @inventory.item.find(params[:id])
    @item.destroy
    flash[:alert] = "Item deleted."
    redirect_to @inventory
  end

  private
  def item_params
    params.require(:item).permit(:name, :count, :inventory_id)
  end

  def set_inventory
    @inventory = Inventory.find(params[:inventory_id])
  end
end