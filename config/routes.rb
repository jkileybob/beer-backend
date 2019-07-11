Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      resources :users, only: [:create]

      post '/login', to: 'auth#create'        # localhost:3000/api/v1/login
      get '/profile', to: 'users#profile'      # localhost:3000/api/v1/profile
      # get '/users/:username', to: 'users#show'    #localhost:3000/api/v1/users/:username

    end
  end
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
