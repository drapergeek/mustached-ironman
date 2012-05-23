MustachedIronman::Application.routes.draw do
  devise_for :users
  resources :movie_recommendations, only: [:index, :show, :create]
  resources :my_recommendations, only: [:index]
  resources :friends, only: [:index, :show]
  resources :movie_searches, only: [:new]
  root to: "movie_recommendations#index"
end
