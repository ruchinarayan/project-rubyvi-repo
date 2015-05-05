Rails.application.routes.draw do

  get 'student/studentList'
  get 'honors/index'

  get 'pendings/index'

  get 'honors/new'

  get '/courses' , to: 'courses#index', as: 'courses'
  get '/users' , to: 'users#show', as: 'home'
  get '/users/:id' , to: 'users#show', as: 'homePage'
  
  get '/messagehonor', to: 'honors#message', as: 'message_honors'
  get '/messagecourse', to: 'courses#message', as: 'message_courses'
  get '/messagestudent', to: 'student#message', as: 'message_student'


  get '/pendings', to: 'pendings#index', as: 'pendings_list'
  get '/pendings/:id', to: 'pendings#show', as: 'pending'
  

  get 'pendings/:id/edit', to: 'pendings#edit', as: 'edit_pending'
  patch '/pendings/:id', to: 'pendings#update'

  delete '/pendings/:id', to: 'pendings#destroy', as: 'pend_delete'

  get '/pendings/index' , to: 'pendings#index', as: 'pending_search_list'
  post '/pendings/searchList', to: 'pendings#index'
 
  get '/search/:id' , to: 'users#showSearch', as: 'main_search_list'
  post '/search/:id', to: 'users#showSearch'

  root 'users#new'
  #root 'sessions#new'

  get 'signup' => 'users#new'

  
  get    '/student/failStu', to: 'student#failStu'
  get    '/student/studentIfo', to: 'student#studentIfo'
  get    '/student/IfoRevise', to: 'student#IfoRevise'
  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :professors
  resources :honors
  resources :student
  resources :courses

  get '/student/:id/notes', to: 'student#notes', as: 'notes_student'
#newHonor create
  #get '/honors/new',  to: 'honors#new', as: 'new_honor'
 # post '/honors', to: 'honors#create'
#show
#  get '/honors/:id', to: 'honors#show' , as: 'honor'


  #get 'displayStudent' => 'students#index'
  get  '/student/idex/:id', to: 'student#index',  as: 'student_List'
  get  'student/show/:id', to: 'student#export', as: 'honor_export'
 # get  '/student/:id', to: 'users#show'

  get '/student/:id' , to: 'student#show', as: 'index_search_list'
  get '/student/:id' , to: 'student#search', as: 'search_student'
  post '/student' , to: 'student#search'

get '/displayStudent/:id/edit', to: 'honors#edit', as: "course_edit"
patch '/displayStudent/:id', to: 'honors#update'
put '/displayStudent/:id', to: 'honors#update'


  #resources :contracts
  #index
  get '/contracts', to: 'contracts#index', as: 'contracts'

  #form
  get '/contract/new', to: 'contracts#new', as: 'new_contracts'
  post '/contracts', to: 'contracts#create'

  #show
  get '/contracts/:id' , to: 'contracts#show', as: 'contract'

  #edit/update
  get '/contracts/:id/edit' , to: 'contracts#edit', as: 'edit_contract'
  patch '/contracts/:id', to: 'contracts#update'
  put '/contracts/:id', to: 'contracts#update'


  get '/pendings/new', to: 'pendings#new', as: 'new_pending'
  post '/pendings', to: 'pendings#create'
  #Possibly a post to pending here

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
 
