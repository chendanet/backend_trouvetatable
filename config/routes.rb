Rails.application.routes.draw do
  Rails.application.routes.default_url_options[:host] = 'localhost:3000'

  namespace :api, defaults: { format: :json } do
    resources :bookings
    resources :ratings

    # get 'venues/search', to: 'venues#search'
    resources :venues
    resources :users, only: %w[show index update destroy]
  end
  devise_for :users,
  defaults: { format: :json },
  path: '',
  path_names: {
    sign_in: 'api/login',
    sign_out: 'api/logout',
    registration: 'api/signup'
  },
  controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }

  resources :password, only: [:index]
  post 'password/forgot', to: 'password#forgot'
  post 'password/reset', to: 'password#reset'
end
