Rails.application.routes.draw do
  get 'welcome/index'

  resources :workouts do
    resources :stations do
	  resources :exercises
    end
  end

  resources :exercises
  resources :exercise_instances

  root 'welcome#index'
end
