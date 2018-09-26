Rails.application.routes.draw do
  resources :payees
  resources :users
  root to: "root#index", status: :ok
end
