Rails.application.routes.draw do
  namespace :apiv1 do
    resources :sessions, only: [:show], controller: "sessions/show"
    resources :sessions, only: [:create], controller: "sessions/create" 
    resources :sessions, only: [:destroy], controller: "sessions/destroy"

    resources :grids, only: [:show], controller: "grids/show"

    resources :barns, only: [:show], controller: "barns/show"
    resources :stations, only: [:show], controller: "stations/show"

    resources :weightickets, only: [:create], controller: 'weightickets/create'
  end
end
