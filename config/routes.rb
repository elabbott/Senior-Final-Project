Yummytummies::Application.routes.draw do
  resources :purchase_meals

  resources :parent_children

  resources :children

  resources :meal_lists

  resources :payment_infos

  resources :orders

  resources :meals

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions', passwords: 'passwords'}
  resources :franchises

  resources :schools

  resources :homepages
  post "/add_children" , :to => "schools#add_children", :as => 'add_children'
  get "/add_meal_to_child/:id" , :to => "purchase_meals#add_meal_to_child", :as => 'add_meal_to_child'

  post "/process_add_meal_to_child" , :to => "purchase_meals#process_add_meal_to_child", :as => 'process_add_meal_to_child'
  
   get "/payment/:id" , :to => "orders#payment", :as => 'payment'

  post "/process_payment" , :to => "orders#process_payment", :as => 'process_payment'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  devise_scope :user do
    authenticated :user do

      root :to => 'homepages#index', as: :authenticated_root
    end

    unauthenticated :user do
      root :to => 'devise/sessions#new', as: :unauthenticated_root
    end
  end

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
