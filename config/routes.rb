Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [] do
    collection do
      get :check_email
      get :check_username
    end
  end
  get "up" => "rails/health#show", as: :rails_health_check
  root "static#index"
end
