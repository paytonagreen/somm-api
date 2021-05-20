Rails.application.routes.draw do
  resources :accounts_dishes
  resources :accounts_wines
  resources :accounts
  # global options responder -> makes sure OPTION request for CORS endpoints work
  match '*path', via: [:options], to: lambda {|_| [204, { 'Content-Type' => 'text/plain' }]}
  #user routes
  resources :users, only: [:create, :show, :index, :update, :destroy]
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
  resources :accounts_wines, only: [:index, :create]
  resources :accounts, only: [:index, :show, :show_wines, :create, :update, :destroy ] do
    get '/wines' => 'accounts#show_wines'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end