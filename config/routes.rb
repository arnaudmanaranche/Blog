Rails.application.routes.draw do

  get 'admin' => "admin#index"

  get "about" => "about#index"
  
  get 'search', to: 'search#index', as: :search

  resources :contacts
  get 'welcome/index'

  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :articles do
      resources :comments
  end
end
