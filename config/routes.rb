Rails.application.routes.draw do
  devise_for :users
  resources :students do
    get :subjects
  end
  root 'visitors#index'
  resources :teachers do
    resources :subjects
  end
  resources :reports do 
    resources :subjects
  end
end
