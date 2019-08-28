Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      resources :users
      resources :beers
      resources :breweries
      resources :favorites

      post '/login', to: 'auth#create'        # localhost:4000/api/v1/login
      get '/profile', to: 'users#profile'      # localhost:4000/api/v1/profile

    end
  end
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
