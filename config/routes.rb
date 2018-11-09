Rails.application.routes.draw do
  devise_for :users
  get 'welcom/index'

  get 'stats/index'
  get 'stats/show'

  resources :articles do
    resources :comments
  end

  root 'welcom#index'
end
