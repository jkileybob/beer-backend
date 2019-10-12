Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      resources :users
      resources :breweries
      # resources :beers
      # resources :favorites

      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'

      post '/add-favorites/', to: 'favorites#create'
      get '/favorites', to: 'favorites#index_user_favs'

      get '/beers', to: 'beers#index_user_beers'
      get '/beers/:id', to: 'beers#show_beer'
      post '/add-beer/', to: 'beers#create_beer'
      patch '/edit-beer', to: 'beers#update'
      delete '/delete-beer/:id', to: 'beers#destroy'

      # localhost:4000/api/v1/
    end
  end
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
