Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :poems, only: [:index]

      get '/poems/random', to: 'poems#show'
    end
  end
end
