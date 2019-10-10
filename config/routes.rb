Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      resources :users
      # resources :beers
      resources :breweries
      # resources :favorites

      post '/login', to: 'auth#create'        # localhost:4000/api/v1/login
      get '/profile', to: 'users#profile'
            # localhost:4000/api/v1/profile
      post '/add-favorites/', to: 'favorites#create'
      get '/favorites', to: 'favorites#index_user_favs'   # localhost:4000/api/v1/favorites

      get '/beers', to: 'beers#index_user_beers'
      post '/add-beer/', to: 'beers#create_beer'

      patch '/edit-beer', to: 'beers#update'

      get '/all', to: 'beers#show'
    end
  end
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
