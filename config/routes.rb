Rails.application.routes.draw do
  #user routes
  post '/users', to: 'users#create'
  get '/users/:user_id', to: 'users#show'
  post '/users', to: 'users#index'
  #session routes
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  resources :users, only: [:create, :show, :index] do
    resources :items, only: [:create, :show, :index, :destroy]
  end
  #DB routes
  resources :wines_sauces, only: [:index, :create]
  resources :sauces, only: [:index, :show, :create, :update, :destroy ] do
    get '/wines' => 'sauces#show_wines'
  end
  resources :wines_proteins, only: [:index, :create]
  resources :wines, only: [:index, :show, :create, :update, :destroy ]
  resources :proteins, only: [:index, :show, :show_wines, :create, :update, :destroy ] do
    get '/wines' => 'proteins#show_wines'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end