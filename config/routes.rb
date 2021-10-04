Rails.application.routes.draw do
  devise_for :users

  resources :profiles
  resources :articles
  resources :messages

  root to: 'pages#home'
  get 'pages/actualites'
  get 'pages/admin'
  get 'pages/client'
  get 'pages/shop'
  get 'supprimer_article', to: 'articles#supprimer_article'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
