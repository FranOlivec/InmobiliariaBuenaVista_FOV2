Rails.application.routes.draw do
  devise_for :users
  get 'homex/index'
  resources :departments
  resources :buildings
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homes#index"
  get 'admin/departments', to: 'departments#admin_index', as: 'admin_departments'
end
