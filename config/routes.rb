Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "inventories#index"

  resources :inventories do
    resources :items
  end
  resources :shipments do
    member do
      get 'add_inventory/:shipment_id', to: 'shipments#add_inventory', as: :add_inventory
      post 'add_inventory/:shipment_id', to: 'shipments#add_inventory'
    end
  end
end
