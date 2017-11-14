Rails.application.routes.draw do

  resources :contacts
  get 'welcome/index'

  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :articles do
      resources :comments
  end
end
