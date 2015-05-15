Rails.application.routes.draw do
  namespace :apiv1 do
    resources :sessions, only: [:show], controller: "sessions/show"
    resources :sessions, only: [:create], controller: "sessions/create" 
    resources :sessions, only: [:destroy], controller: "sessions/destroy"

    resources :grids, only: [:show], controller: "grids/show"

    resources :barns, only: [:show], controller: "barns/show"
    resources :barns, only: [:update], controller: "barns/update"
    resources :scales, only: [:show], controller: "scales/show"

    resources :warehouses, only: [:show], controller: "warehouses/show" do
      resources :batches, only: [:index], controller: "batches/index"
    end

    resources :weightickets, only: [:create], controller: 'weightickets/create'
    resources :weightickets, only: [:show], controller: 'weightickets/show'
    resources :weightickets, only: [:update], controller: 'weightickets/update'

    resources :appointments, only: [:show], controller: "appointments/show"
    resources :appointments, only: [:index], controller: "appointments/index"
    resources :appointments, only: [:update], controller: "appointments/update"
    resources :appointments, only: [:create], controller: "appointments/create"

    resources :batches, only: [:create], controller: "batches/create"
    resources :batches, only: [:show], controller: "batches/show"
    resources :batches, only: [:index], controller: "batches/index"
    resources :batches, only: [:destroy], controller: "batches/destroy"

    resources :trucks, only: [:show], controller: 'trucks/show'
    resources :trucks, only: [:index], controller: 'trucks/index'
    resources :trucks, only: [:create], controller: 'trucks/create'
  end

  namespace :apiv0 do
    resources :weightickets, only: [:show], controller: 'weightickets/show'
  end

  namespace :apivm do
    resources :barns, only: [:show], controller: 'barns/show'
    resources :barns, only: [:index], controller: 'barns/index'
    resources :barns, only: [:create], controller: 'barns/create'
    resources :barns, only: [:update], controller: 'barns/update'

    resources :scales, only: [:show], controller: 'scales/show'
    resources :scales, only: [:index], controller: 'scales/index'
    resources :scales, only: [:create], controller: 'scales/create'
    resources :scales, only: [:update], controller: 'scales/update'

    resources :warehouses, only: [:show], controller: 'warehouses/show'
    resources :warehouses, only: [:index], controller: 'warehouses/index'
    resources :warehouses, only: [:create], controller: 'warehouses/create'
    resources :warehouses, only: [:update], controller: 'warehouses/update'
  end
end
