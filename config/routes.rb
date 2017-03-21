Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  resources :articles
  # resources :assessment_requests, only: [:new, :create], path: 'website_critic'
  get 'pages/services' => 'pages#services'
end
