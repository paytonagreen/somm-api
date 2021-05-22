Rails.application.routes.draw do
  resources :subregions_wines, only: [:index, :create]
  resources :regions_wines, only: [:index, :create]
  resources :countries_wines, only: [:index, :create]
  resources :producers_wines, only: [:index, :create]
  resources :producers, only: [:index, :show, :show_wines, :show_grapes, :create, :update, :destroy] do
    get '/wines' => 'producers#show_wines'
  resources :subregions, only: [:index, :show, :show_wines, :show_grapes, :create, :update, :destroy] do
    get '/wines' => 'subregions#show_wines'
  resources :regions, only: [:index, :show, :show_wines, :show_grapes, :create, :update, :destroy] do
    get '/wines' => 'regions#show_wines'
  resources :countries, only: [:index, :show, :show_wines, :show_grapes, :create, :update, :destroy] do
    get '/wines' => 'countries#show_wines'
  resources :grapes_wines, only: [:index, :create]
  resources :accounts_grapes, only: [:index, :create]
  resources :sauces_grapes, only: [:index, :create]
  resources :proteins_grapes, only: [:index, :create]
  resources :grapes, only: [:index, :show, :create, :update, :destroy]
  resources :accounts_dishes
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
    get '/grapes' => 'sauces#show_grapes'
  end
  resources :wines_proteins, only: [:index, :create]
  resources :wines, only: [:index, :show, :show_grapes, :create, :update, :destroy ] do
    get '/grapes' => 'wines#show_grapes'
  end
  resources :proteins, only: [:index, :show, :show_wines, :create, :update, :destroy ] do
    get '/wines' => 'proteins#show_wines'
    get '/grapes' => 'proteins#show_grapes'
  end
  resources :accounts_wines, only: [:index, :create]
  resources :accounts, only: [:index, :show, :show_wines, :create, :update, :destroy ] do
    get '/wines' => 'accounts#show_wines'
    get '/grapes' => 'accounts#show_grapes'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end