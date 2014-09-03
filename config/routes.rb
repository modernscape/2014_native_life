NativeLife::Application.routes.draw do
  devise_for :users

  # match 'phase_1' => 'leads#phase_1', :via => :GET
  get 'phase_0' => 'leads#phase_0'
  get 'phase_1' => 'leads#phase_1'
  get 'phase_2' => 'leads#phase_2'
  get 'phase_3' => 'leads#phase_3'
  get 'phase_4' => 'leads#phase_4'
  get 'phase_5' => 'leads#phase_5'
  get 'phase_6' => 'leads#phase_6'
  get 'phase_7' => 'leads#phase_7'
  #get 'phase_1_to_2' => 'leads#phase_1_to_2'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'leads#phase_0'

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
