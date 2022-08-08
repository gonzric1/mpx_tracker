Rails.application.routes.draw do
  devise_for :users
  resources :locations
  root 'locations#index'

  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
end
