class ShipmentsController < ApplicationController

  # CALLBACKS

  def index
    @shipments = Shipment.all
  end

  def show
    @shipment = Shipment.find(params[:id])
    @inventories = Inventory.all
  end

  def new
    @shipment = Shipment.new
  end

  def create
    @shipment = Shipment.new
    @shipment = Shipment.create(shipment_params)
    if @shipment.save
      flash[:notice] = "New shipment created!"
      redirect_to @shipment
    else
      flash[:alert] = "Please try again."
      render :new
    end
  end

  # def find_inventory
  #   @shipment = Shipment.find(params[:id])
  #   @inventories = Inventory.all
  # end

  def add_inventory
    @shipment = Shipment.find(params[:id])
    @inventory = Inventory.find(params[:shipment_id])
    if @inventory.update_attribute(:shipment_id, @shipment.id)
      flash[:notice] = "Inventory added to shipment!"
      redirect_to shipment_path(@shipment), status: :see_other
    else
      flash[:alert] = "Please try again."
      render :add_inventory
    end
  end

  def edit
    @shipment = Shipment.find(params[:id])
  end

  def update
    @shipment = Shipment.find(params[:id])
    if @shipment.update
      flash[:notice] = "Shipment updated!"
      redirect_to @shipment
    else
      render :edit
    end
  end

  def destroy
    @shipment = Shipment.find(params[:id])
    @shipment.destroy
    flash[:alert] = "Shipment dropped."
    redirect_to root_path
  end

  private
  def shipment_params
    params.require(:shipment).permit(:name)
  end
end