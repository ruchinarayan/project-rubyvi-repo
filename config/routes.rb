Rails.application.routes.draw do

  get 'honors/index'

  get 'pendings/index'

  get 'honors/new'

  get '/courses' , to: 'courses#index', as: 'courses'
  get '/adminHome' , to: 'users#adminHome', as: 'adminHome'
  
  get '/messagehonor', to: 'honors#message', as: 'message_honors'
  get '/messagecourse', to: 'courses#message', as: 'message_courses'
  get '/messagestudent', to: 'student#message', as: 'message_student'

  get '/pendings', to: 'pendings#index', as: 'pendings_list'
  get '/pendings/:id', to: 'pendings#show', as: 'pendings'
  delete '/pendings/:id', to: 'pendings#destroy'

  get '/pendings' , to: 'pendings#index', as: 'pending_search_list'
  post '/pendings', to: 'pendings#index'
 
  get '/search' , to: 'users#show', as: 'main_search_list'
  post '/search', to: 'users#show'

  root 'users#new'

  get 'signup' => 'users#new'

  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users

  resources :honors
  resources :students
  resources :courses
#newHonor create
  #get '/honors/new',  to: 'honors#new', as: 'new_honor'
 # post '/honors', to: 'honors#create'
#show
#  get '/honors/:id', to: 'honors#show' , as: 'honor'


  #get 'displayStudent' => 'students#index'
  get '/displayStudent' , to: 'students#index', as: 'index_search_list'
  post '/displayStudent', to: 'students#index'

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

