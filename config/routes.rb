Rails.application.routes.draw do
  root "pages#index"

  get     "request", to: "requests#create"
  post    "request", to: "requests#create"
  put     "request", to: "requests#create"
  patch   "request", to: "requests#create"
  delete  "request", to: "requests#create"
  options "request", to: "requests#create"
end
