Rails.application.routes.draw do
  devise_for :users
  root 'visitors#index'
  resources :students do
    get :subjects
  end
  resources :teachers do
    get :subjects
  end
  get 'reports/subjects', to: 'reports#subjects', as: 'report_subjects'
  # GET :reports do
  #   get :subjects
  # end
end
