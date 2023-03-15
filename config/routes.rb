Rails.application.routes.draw do
  root "pages#index"

  resources :pools, only: [:show], path: 'p'
  resources :pulses, only: [:show, :destroy]

  scope module: "api", as: "pulse_request" do
    get     "pulse/:id", to: "pulses#create"
    post    "pulse/:id", to: "pulses#create"
    put     "pulse/:id", to: "pulses#create"
    patch   "pulse/:id", to: "pulses#create"
    delete  "pulse/:id", to: "pulses#create"
    options "pulse/:id", to: "pulses#create"
  end
end
