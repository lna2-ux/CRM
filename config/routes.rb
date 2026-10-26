Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "customers#index"

  resources :customers, only: [:index] do
    collection do
      get :alphabetized
      get :missing_email
    end
  end
end