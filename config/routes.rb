require 'sidekiq/web'

Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  mount Sidekiq::Web => "/sidekiq"

  resources :units
  resources :models
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "root#index"

  resources :rosters do
    resources :roster_models
  end

  resources :models do
    resources :units
  end

  namespace :import do
    resources :units, only: [:index, :create]
  end
end
