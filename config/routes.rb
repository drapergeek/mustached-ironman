MustachedIronman::Application.routes.draw do
  devise_for :users
  resources :movie_recommendations, only: [:index, :show]
  resources :my_recommendations, only: [:index]
  resources :friends, only: [:index, :show]
  root to: "movie_recommendations#index"
end
