TireStore::Application.routes.draw do
  # resources :abouts
  devise_for :users
  # the URL             the controller/action       the path name
  get "store/index"
  get 'about',           to: 'abouts#index',         as: 'about'
  get 'users',           to: 'users#index',          as: 'users'
  get 'users/new',       to: 'users#new',            as: 'new_users'
  get 'users/:id',       to: 'users#show',           as: 'user'
  post 'users' ,         to: 'users#create'
  get 'products/:id',    to: 'products#show',        as: 'product'
  get 'products',        to: 'products#index',       as: 'products'
  get 'search',          to: 'home#search',          as: 'search'
  get 'search_results',  to: 'home#search_results',  as: 'search_results'
  get 'home/cart',       to: 'home#cart',            as: 'cart'
  post 'home/cart',      to: 'home#cart',            as: 'add_to_cart'
  get 'home/clean_cart', to: 'home#clean_out_cart',  as: 'reset_cart'
  # get 'search', to: 'categories#search', as: 'search'
  # get 'search', to: 'categories#search_results', as: 'search_results'

  # get "users/show"
  
  # get "user/index"
  # get "user/show"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :provinces

  # resources :products
  # resources :users
  
  resources :orders

  resources :line_items

  resources :categories

  
  # get "home/index"
  root to: "home#index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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
