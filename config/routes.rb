Rails.application.routes.draw do

  # get "/songs", to: "songs#index"
  # get "/songs/new", to: "songs#new", as: "new_song"
  # post "/songs", to: "songs#create"
  # get "/songs/:id", to: "songs#show", as: "song"
  # get "/songs/:id/edit", to: "songs#edit", as: "edit_song"
  # patch "/songs/:id", to: "songs#update"
  #add delete!!!, and maybe need to add password stuff too?


  # Our app has three pages:
  #
  # 1) A login page, where the user enters their username.
  # No passwords; we'll just trust them. After they're logged in,
  # users are taken to...
  #
  # 2) A user homepage, which says, "Hi, #{username}",
  # and has a link to the secret page, which is...
  #
  # 3) A page with a secret on it, which users must be logged in to see.
  #

#  get "/", to: redirect("/sessions/new") #this redirects the welcome page to the login page

#  get "/sessions", to: "sessions#index"
  get "/sessions/new", to: "sessions#new", as: "new_session"
  post "/sessions", to: "sessions#create"

  get "/sessions/show", to: "sessions#show", as: "hello"
  post "/logout", to: "sessions#destroy", as: "logout"

  get "/secrets/show", to: "secrets#show", as: "secret"
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
