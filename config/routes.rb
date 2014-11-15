Rails.application.routes.draw do
  get 'welcome/index'

  resources :workouts

  root 'welcome#index'
end
