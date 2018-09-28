Rails.application.routes.draw do
  devise_for :users
  get 'welcom/index'

  resources :articles do
    resources :comments
  end

  root 'welcom#index'
end
