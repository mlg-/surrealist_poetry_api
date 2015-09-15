Rails.application.routes.draw do

  resources :poems, only: [:index, :show]

end
