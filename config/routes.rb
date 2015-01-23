Rails.application.routes.draw do
  get 'welcome/index'

  resources :workouts do
    resources :stations do
	  resources :exercises
    end
  end

  resources :exercises

  root 'welcome#index'
end
