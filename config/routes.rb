Rails.application.routes.draw do 
  devise_for :users
  root 'employees#index'

  # get 'hellos/index'
  # get 'tests/index'



  resources :hellos
  resources :accounts
  resources :supliers
  resources :employees
  resources :documents do
   collection do
    get :contact
   end
  end
  resources :tests
  
  # get 'documents/index'

  # get 'documents/contact'


  # resources :hellos

  # post 'documents', to:'documents#create'
  # get 'documents/destroy'
  # delete 'documents/destroy'

  # delete 'employees/:id', to: 'employees#destroy'
  # resources :employees, only: [:index] do 
  #   collection do 
  #     get :create
  #   end
  # end
  # get 'static_pages/about'
  # get 'static_pages/contact'
  # resources :static_pages, only: [:index] do 
  #   collection do 
  #     get :about
  #     get :contact
  #     get :employee
  #     get :detail
  #   end
    # member do 
    #   get :about
    #   get :contact
    # end
  # root 'employees#index'
  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # root 'posts#index'
  # resources :post
  # get 'posts/new'

  # resources :post, only: [:index] do
  #   collection do
  #     # get :show
  #     # get :new
  #     # get :edit
  #     # get :update
  #     # get :create
  #     # get :destroy
  #   end
  # end

  # root 'post#index'
end
