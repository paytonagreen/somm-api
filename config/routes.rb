Rails.application.routes.draw do
  resources :wines_proteins, only: [:index, :create]
  resources :wines, only: [:index, :show, :create, :update, :destroy ]
  resources :proteins, only: [:index, :show, :show_wines, :create, :update, :destroy ] do
    get '/wines' => 'proteins#show_wines'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
