Rails.application.routes.draw do
  root "pages#index"

  scope module: 'request', path: 'request', as: 'api_request' do
    get     ":id", to: "hooks#create"
    post    ":id", to: "hooks#create"
    put     ":id", to: "hooks#create"
    patch   ":id", to: "hooks#create"
    delete  ":id", to: "hooks#create"
    options ":id", to: "hooks#create"
  end
end
