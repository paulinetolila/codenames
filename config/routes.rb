Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games
  get 'games/:id/espions', to: 'games#espions', as: :espions
end
