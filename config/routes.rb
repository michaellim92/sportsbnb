Rails.application.routes.draw do
  devise_for :users

  unauthenticated do
    devise_scope :user do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end

 authenticated :user do
  root to: 'gears#dashboard'
 end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :gears do
    resources :rentals, only: [:new, :create]
  end
  resources :rentals, only: :destroy do
    get :payment_form, on: :collection
  end
  get "dashboard", to: "users#dashboard", as: :dashboard
  get "rented", to: "users#rented", as: :rented
end
