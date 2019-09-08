Rails.application.routes.draw do
  
  get 'pages/dashboard', to: 'pages#dashboard', as: :dashboard
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
