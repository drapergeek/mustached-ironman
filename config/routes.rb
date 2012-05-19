MustachedIronman::Application.routes.draw do
  devise_for :users
  resources :movie_recommendations, only: [:index, :show]
  root to: "movie_recommendations#index"
end
