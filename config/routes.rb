Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "inventories#index"
  
  resources :inventories do
    resources :items
  end
  resources :shipments do
    member do
      match :add_inventory, via: [:get, :post]
    end
  end

  # custom routes for shipment views

  # get "/shipments/:shipment_id/inventories/new", to: "shipments#add_inventory", as: :new_shipment_inventory
  # post "/shipments/:shipment_id/inventories", to: "shipments#add_inventory"

end
