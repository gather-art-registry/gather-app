Rails.application.routes.draw do
  
  resources :contents

  # scope module: 'admin' do
  #   resources :artists do
  #     resources :items, shallow: true
  #   end
  # end

  get 'permanent_collection' => 'galleries#index'
  get 'categories' => 'galleries#categories'
  get 'registries' => 'registries#admin_index'
  resources :galleries

  devise_for :users
  resources :items
  resources :artists
  resources :media

  resources :users do
    resources :registries
  end

  resources :registries do
    resources :items do
      post 'add_item' => 'registries#add_item'
      post 'remove_item' => 'registries#remove_item'
    end
  end

  root 'pages#home'
  get 'pages/about'
  get 'pages/terms_of_service'
  get 'pages/privacy_policy'
  get 'pages/contact_us'
  get 'pages/team'
  get 'pages/become_an_artist'
  get 'pages/using_gather'
  get 'pages/mission'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase



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
