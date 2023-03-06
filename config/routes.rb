Rails.application.routes.draw do
  root "pages#index"

  resources :pools, only: [:show], path: 'p'

  resources :requests, only: [:show, :destroy]

  scope module: 'hook', path: 'hook', as: 'hook_request' do
    get     ":id", to: "requests#create"
    post    ":id", to: "requests#create"
    put     ":id", to: "requests#create"
    patch   ":id", to: "requests#create"
    delete  ":id", to: "requests#create"
    options ":id", to: "requests#create"
  end
end
