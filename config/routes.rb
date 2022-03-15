Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  end
  post "/graphql", to: "graphql#execute"
  scope :api do
    resources :categories, only: [:index, :create, :update, :show, :destroy]
    resources :services, only: [:index, :create, :update, :show, :destroy]
    resources :available_dates, only: [:index, :create, :show, :destroy]
    resources :available_times, only: [:index, :create, :show, :destroy]
    resources :bookings, only: [:index, :create, :update, :show, :destroy]
  end
  #resources :services
  #resources :categories
  #resources :available_dates
  #resources :available_times
  #resources :bookings
  devise_for :users,
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }
  get '/member-data', to: 'members#show'
  get '/allUsers', to: 'members#allUsers'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
