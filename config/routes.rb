Rails.application.routes.draw do
  post 'search', to: 'search#index'
  resources :kategorijas
  resources :pamatlidzeklis do
    member do
      get 'download_qr'
    end
  end
  devise_for :users
  root 'home#index'

  get "up" => "rails/health#show", as: :rails_health_check
end
