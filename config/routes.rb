MustachedIronman::Application.routes.draw do
  devise_for :users
  resources :movie_recommendations, only: [:index, :show]
  resources :my_recommendations, only: [:index]
  root to: "movie_recommendations#index"
end
