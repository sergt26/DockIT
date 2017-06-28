Rails.application.routes.draw do

  root 'events#index'
  # get '/events/:id' => 'events#show'
  # post '/events/dashboard' => 'events#dashboard'
  get '/search', to: 'events#index', as: 'search'
  get '/events/sync_to_calendar' => 'events#sync_to_calendar'

  resources :events do
    collection do
      get :dashboard
    end
  end

    root 'sessions#user'
      match "/auth/google_oauth2/callback" => "sessions#create", via: [:get, :post]

      get "/logout" => "sessions#destroy", :as => :logout
      # get '/redirect', to: 'example#redirect', as: 'redirect'
      # get '/callback', to: 'example#callback', as: 'callback'
end
