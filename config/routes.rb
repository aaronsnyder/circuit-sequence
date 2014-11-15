Rails.application.routes.draw do
  get 'welcome/index'

  resources :workouts do
    resources :stations
  end

  resources :exercises

  root 'welcome#index'
end
