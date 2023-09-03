Rails.application.routes.draw do
  # root "welcome#index"
  resources :users, only: [:show] do
    resources :discover_parks, only: [:index]
  end
end
