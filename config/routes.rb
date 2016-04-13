Rails.application.routes.draw do
  resources :poems, only: [:index, :show]

  namespace :api do
    namespace :v1 do
      resources :poems, only: [:index, :show]
      get '/poems/all/random', to: 'poems#random'

      resources :lines, only: [:index, :show]
      get '/lines/all/random', to: 'lines#random'
    end
  end
end
