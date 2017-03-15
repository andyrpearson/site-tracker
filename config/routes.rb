Rails.application.routes.draw do

  devise_for :users
  resources :sites do
    resources :notes
  end
  resources :plans
  resources :organisations

  root 'sites#index'
  get 'about' => 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
