WoodenLegs::Application.routes.draw do
  get "store/index"
  get "store/show"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'admin', to: 'admin#index', as: 'admin'


  get     "products",          to: "product#index",   as: "products"
  get     "products/new",      to: "product#new",     as: "new_product"
  get     "products/:id",      to: "product#show",    as: "product"
  post    "products",          to: "product#create"
  get     "products/:id/edit", to: "product#edit",    as: "edit_product"
  patch   "products/:id",      to: "product#update"
  delete  "products/:id",      to: "product#destroy", as: "destroy_product"
  
  # Example resource route (maps HTTP verbs to controller actions automatically):
    resources :customers
    resources :orders
    resources :designers
    resources :provinces
    resources :line_items
    resources :categories
    resources :store

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'store#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase


  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
