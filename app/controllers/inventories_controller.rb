class InventoriesController < ApplicationController

  def index
    @inventories = Inventory.all
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new
    @inventory = Inventory.create(inventory_params)
    if @inventory.save
      flash[:notice] = "New inventory created!"
      redirect_to @inventory
    else
      render :new
    end
  end

  def edit
    @inventory = Inventory.find(params[:id])
  end

  def update
    @inventory = Inventory.find(params[:id])
    if @inventory.update(inventory_params)
      flash[:notice] = "Inventory updated!"
      redirect_to @inventory
    else
      render :edit
    end
  end

  def show
    @inventory = Inventory.find(params[:id])
  end

  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy
    flash[:alert] = "Inventory deleted."
    redirect_to root_path
  end

  private
  def inventory_params
    params.require(:inventory).permit(:name, items: [:name, :count, :_destroy])
  end
end