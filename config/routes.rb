Rails.application.routes.draw do
  get 'bookmarks/new'
  root to: "lists#index"
  resources :lists, only: [:index, :show, :create, :new] do
    resources :bookmarks, only: [:new, :create, :show]
  end
end
