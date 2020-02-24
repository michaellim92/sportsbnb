Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :equipments do
    resources :rentals, only: [:only, :create]
  end
  resources :rentals, only: :destroy
end
