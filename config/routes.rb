Rails.application.routes.draw do
  
  resources :students
  resources :class_reports
  get 'earnings/index', to: 'earnings#index', as: :earnings
  get 'pages/dashboard', to: 'pages#dashboard', as: :dashboard
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
