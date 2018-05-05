Rails.application.routes.draw do

  get 'mascota/:id/vacunas' => 'vacunas#index', as: 'vacunas'
  post 'mascota/:id/vacunas' => 'vacunas#create'
  get 'mascota/:id/vacunas/new' => 'vacunas#new', as: 'new_vacuna'
  get 'vacunas/:id/edit' => 'vacunas#edit'
  get 'vacunas/:id' => 'vacunas#show', as: 'vacuna' 
  patch 'vacunas/:id' => 'vacunas#update'
  put  'vacunas/:id' => 'vacunas#update'
  delete 'vacunas/:id' => 'vacunas#destroy'
  #resources :vacunas
  # get 'vacunas/:id/agregar_vacunas' => 'vacunas#agregar_vacunas', as: 'agregar_vacunas'

  # get 'vacunas/:id/modificar_vacunas' => 'vacunas#modificar_vacunas', as: 'modificar_vacunas' 

  resources :planes
  get 'login' => 'sessions#new', as: 'login'
  post   'login'   => 'sessions#create'
  get 'logout'  => 'sessions#destroy'
  resources :fotos
  get 'menu_foto' => 'fotos#menu', as: 'menu_foto'
  resources :reservas
  resources :mascota
  get 'update_mascotas' => 'reservas#update_Mascotas', as: 'update_mascotas'
  resources :usuarios
    get 'admin' => 'welcome#admin'
    get 'reservas' => 'welcome#reservas/index'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'
  post 'welcome/contactar' => 'welcome#contactar', as: 'correo'
  post 'welcome/reservar' => 'welcome#reservar', as:'reservar'
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
