Rails.application.routes.draw do

  resources :sites
  resources :plans

  root 'pages#home'
  get 'about' => 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
