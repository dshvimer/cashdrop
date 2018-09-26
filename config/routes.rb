Rails.application.routes.draw do
  resources :users
  root to: "root#index", status: :ok
end
