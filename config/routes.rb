Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/items', to: 'items#index'
      get '/items/:id', to: 'items#show'
      get '/top_five', to: 'items#top_five'
      post '/suggestion', to: 'suggestions#controller'
      resources :veterinarians, only: [:index]
    end
  end
end
