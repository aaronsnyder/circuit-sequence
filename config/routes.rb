Rails.application.routes.draw do
  get 'exercise_instance/new'

  post 'exercise_instance/create'

  get 'welcome/index'

  resources :workouts do
    resources :stations do
	  resources :exercises
    end
  end

  resources :exercises

  root 'welcome#index'
end
