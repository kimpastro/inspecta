Rails.application.routes.draw do
  root "pages#index"

  resources :pools, only: [:show], path: 'p'
  resources :pulses, only: [:show, :destroy]

  scope module: "api", as: "pulse_request" do
    match "pulse/:id", to: "pulses#create", via: :all
  end
end
