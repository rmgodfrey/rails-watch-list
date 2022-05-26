Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, only: %I[index show new create]
end
