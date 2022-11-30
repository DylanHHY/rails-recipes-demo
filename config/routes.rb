Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :employee
  # resources :clients

  namespace :admin do
    root "events#index"
    resources :events
  end

  root "events#index"

end
