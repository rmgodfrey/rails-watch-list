Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, only: %I[index show new create destroy] do
    resources :bookmarks, only: %I[new create]
  end
  resources :bookmarks, only: %I[destroy]
end
