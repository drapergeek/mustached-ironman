MustachedIronman::Application.routes.draw do
  resources :movie_recommendations, only: [:index, :show]
  root to: "movie_recommendations#index"
end
