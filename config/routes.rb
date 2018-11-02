Rails.application.routes.draw do
  devise_for :users
  get 'welcom/index'

  get 'stats/index'
  get 'stats/show'

  resources :users do
    get 'show'
    post 'delete_all_comments'
    post 'delete_all_articles'
  end

  resources :articles do
    resources :comments
  end

  root 'welcom#index'
end
