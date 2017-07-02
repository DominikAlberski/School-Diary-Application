Rails.application.routes.draw do
  devise_for :users
  root 'visitors#index'
  resources :students do
    get :subjects
    resources :payments
  end
  resources :teachers do
    get :subjects
  end
  resources :payments, only: %I(new create)
  get 'reports/subjects', to: 'reports#subjects', as: 'report_subjects'
  get 'reports/payments', to: 'reports#payments', as: 'report_payments'
  # GET :reports do
  #   get :subjects
  # end
end
